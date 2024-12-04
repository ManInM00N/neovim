return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        follow_current_file = true,
        use_libuv_file_watcher = true,
        auto_refresh = true, -- 启用自动刷新
        hide_gitignored = true,
      },
      buffers = {
        show_unloaded = true,
      },
      git_status = {
        window = {
          position = "float",
        },
      },
    })

    -- 设置快捷键
    vim.api.nvim_set_keymap("n", "<F3>", ":NeoTreeReveal<CR>", { noremap = true, silent = true })
  end,
}
