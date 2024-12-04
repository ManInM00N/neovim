local CMP = require("cmp")

local check_backspace = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end
local luasnip = pcall(require, "luasnip")
CMP.setup({

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = CMP.mapping.preset.insert({
    ["<C-b>"] = CMP.mapping.scroll_docs(-4),
    ["<C-f>"] = CMP.mapping.scroll_docs(4),
    ["<C-e>"] = CMP.mapping.abort(), -- 取消补全，esc也可以退出
    ["<CR>"] = CMP.mapping.confirm({ select = true }),

    -- ["<Tab>"] = CMP.mapping(function(fallback)
    --   if CMP.visible() then
    --     CMP.select_next_item()
    --   elseif luasnip.expandable() then
    --     luasnip.expand()
    --   elseif luasnip.expand_or_jumpable() then
    --     luasnip.expand_or_jump()
    --   elseif check_backspace() then
    --     fallback()
    --   else
    --     fallback()
    --   end
    -- end, {
    --   "i",
    --   "s",
    -- }),

    ["<S-Tab>"] = CMP.mapping(function(fallback)
      if CMP.visible() then
        CMP.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  }),

  -- 这里重要
  sources = CMP.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
  }, {
    { name = "buffer" },
  }),
})
