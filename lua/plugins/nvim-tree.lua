return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup(opts)
    vim.api.nvim_set_keymap("n", "<F3>", ":NvimTreeToggle<CR>y<CR>", { noremap = true, silent = true })
  end,
  opts = {
    auto_reload_on_write = true,
    disable_netrw = false,
    sync_root_with_cwd = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    sort_by = "name",
    root_dirs = {},
    prefer_startup_root = false,
    reload_on_bufenter = false,
    respect_buf_cwd = false,
    on_attach = "default",
    select_prompts = false,
    hijack_directories = {
      enable = true,
      auto_open = true,
    },
    update_focused_file = {
      enable = false,
      update_root = false,
      ignore_list = {},
    },
    system_open = {
      cmd = "",
      args = {},
    },
    filters = {
      dotfiles = true,
      git_clean = false,
      no_buffer = false,
      custom = { "^.git$" }, -- hide .git dir
      exclude = {},
    },
    filesystem_watchers = {
      enable = true,
      debounce_delay = 50,
      ignore_dirs = {},
    },
    git = {
      enable = true,
      ignore = false,
      show_on_dirs = true,
      show_on_open_dirs = true,
      timeout = 400,
    },
    modified = {
      enable = false,
      show_on_dirs = true,
      show_on_open_dirs = true,
    },
  },
}
