return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    -- Define and set highlight groups for each logo line
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#311B92" }) -- Indigo
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = "#512DA8" }) -- Deep Purple
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = "#673AB7" }) -- Deep Purple
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo4", { fg = "#9575CD" }) -- Medium Purple
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo5", { fg = "#B39DDB" }) -- Light Purple
    vim.api.nvim_set_hl(0, "NeovimDashboardLogo6", { fg = "#D1C4E9" }) -- Very Light Purple
    vim.api.nvim_set_hl(0, "NeovimDashboardUsername", { fg = "#D1C4E9" }) -- light purple

    math.randomseed(os.time())
    local function pick_color()
      local colors = { "String", "Identifier", "Keyword", "Number" }
      return colors[math.random(#colors)]
    end
    dashboard.section.header.type = "group"
    dashboard.section.header.val = {
      {
        type = "text",
        val = {
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⡠⢢⠀⠀⠀⠀⠀⠀⠀⠀⠊⠉⠲⢤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠈⣿⣷⠀⠀⠀⠀⠄⠀⠀⡰⣸⣱⠀⠀⠀⠀⠀⠀⢠⠊⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣀⣀⠀⠀⠀⠀⠈⢷⡹⣿⡇⠀⠀⠀⠐⡄⠀⡇⢿⣹⡇⠀⠀⠀⠀⠠⠃⠀⢀⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣤⣴⠶⠶⣿⣿⣿⣿⣿⣿⣷⢶⣶⣤⣬⣷⡷⣧⠀⠀⠀⠀⠨⡀⣿⣸⠏⢿⡀⠀⠀⣠⠧⠤⢸⣿⣶⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣠⠴⠛⢉⣩⣼⡿⣿⡬⣉⣉⡛⠿⣿⠻⣿⣯⠅⣀⠘⣿⣿⣿⣿⣿⡆⠀⠀⠀⢰⣿⣿⠛⡇⣸⠀⠀⣰⡇⠀⣸⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠪⠚⠁⢀⣴⣿⣿⢿⡇⢿⡷⣌⠙⠋⠁⠀⣸⣿⣿⣷⣦⣉⠘⢿⣿⣿⣿⣦⠄⠀⢀⣾⣿⣿⣾⣽⣿⣷⣰⡿⠀⢠⠃⣾⣿⣻⠀⡠⠄⠠⢄⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠃⠁⠀⠀⢀⡾⠋⢿⡟⢸⠀⠘⣧⠘⢆⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣮⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⣿⣇⠀⡌⢸⡿⢷⠃⠀⠀⢀⠤⡯⡕⣎⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⠀⢀⠎⠀⠀⣸⠀⠘⡄⠀⠙⢦⠀⠢⡈⠢⡈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠛⠉⡯⠋⢀⡾⠁⠀⠀⠤⣮⠶⣻⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠙⠀⠀⢱⠀⠀⠀⠱⡀⠈⢢⣀⣐⣌⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠞⢀⢈⠀⢀⡼⠒⠤⢀⠰⠋⣡⡾⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠂⠀⠀⠀⠀⠀⠀⠀⡘⠀⠀⠀⠀⠀⠐⡀⠈⢳⡀⠀⠀⠈⢦⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢹⣟⠠⡻⣷⠀⠟⠑⣲⠒⢁⡴⠮⢞⡵⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠁⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠸⠀⢁⠀⠈⢿⣷⣄⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣷⢲⣯⣠⣠⣿⣷⣇⣼⢎⠀⠀⠀⢀⣴⠞⠀⠀⠀⢀⣀⣀⣤⣤⣤⠶⢶⣶⣶⣶⣄⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣂⣴⠁⠀⠀⠀⠀⠀⠀⠀⡼⡇⠀⠀⠀⠀⠄⢃⠈⣆⠰⣌⣿⣿⣦⡀⢀⠈⠻⣿⣿⣿⡿⢟⡻⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡏⣿⣿⣿⣿⣟⠳⢄⢀⣴⢟⡛⠭⠭⢌⣉⠩⣿⣿⣿⣿⣿⣾⡿⠿⠿⠛⠋⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⣀⣔⣼⡾⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⡇⡿⡄⣀⡀⠀⠘⢼⣄⠘⣄⠈⢿⣿⣿⣿⣿⣷⣄⠈⠙⠻⢿⡀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣔⢋⣈⣣⣯⡞⠋⠁⠈⢭⡍⢉⣳⡒⣚⠿⠟⢻⣿⣿⣿⣍⡉⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠐⠒⠒⠙⠊⠉⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠹⢳⣜⣿⣿⣧⣸⣿⣦⠘⢷⡀⠙⠿⡿⢷⡝⠻⣅⣀⠀⠀⠈⠑⠒⠢⢄⣀⡈⠛⢿⡿⠛⣿⣿⣿⣿⣿⣿⣷⣆⠀⠀⠀⠀⠀⢀⡀⠄⣀⠘⣆⠀⠀⠸⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢠⠇⠀⠀⡀⠀⠀⠀⠀⠀⣼⣧⣄⠐⣿⣿⣿⣿⣿⡽⣿⣦⠈⢿⣼⡀⠀⠀⠉⠑⠬⢿⣝⠓⠒⠒⠶⠤⠔⠒⠊⠉⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣶⠒⠒⠈⢩⠋⢶⡱⡌⣷⠈⢧⠀⢸⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⡟⠀⠀⢀⠁⠀⡀⡀⠀⢠⣿⣿⣿⣆⠸⣿⣿⣿⣿⣿⣮⡻⢧⠀⠀⢿⡀⠀⠀⠀⠀⠀⠀⠁⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣏⣯⣉⣙⡳⢦⠊⢀⠔⠉⠱⣄⠀⠀⠫⣿⣿⣿⣿⣿⠿⠿⠛⠁⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠇⢀⠀⠀⢸⢰⣷⡇⣰⣼⣿⣿⣿⣿⡞⠈⠻⡛⠁⠀⠀⠈⠉⠑⠈⣆⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣷⣿⣤⠞⠀⠀⠀⠀⠑⣶⠟⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⣀⣸⣷⣸⣿⣼⣿⣿⣿⣿⣿⣿⣏⠈⢿⡀⠀⠀⠄⠀⠢⠀⠀⠀⠄⠘⣿⡟⣢⣀⠀⠀⢀⠀⠀⠀⠀⢟⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣰⣗⣲⣄⣠⣷⣄⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣷⣾⣷⡄⠀⠀⠂⡀⠱⡀⠠⣼⣶⣿⡿⠁⠈⠓⢤⡈⢣⡀⢄⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠹⣿⣿⣿⣿⣿⣿⢿⡿⢿⣿⣿⣷⣿⣿⣿⡿⠉⠛⠿⢿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⡄⢸⣯⣿⣿⣿⣿⣿⡿⣿⢿⠟⢻⡿⡟⠀⡩⢯⠿⣿⣦⡀⠀⠀⠀⠘⣶⣽⣿⣿⣿⣆⢀⢤⣶⣾⣿⣿⣦⣵⡤⢹⠀⠀⠀⠀⠀⠀⢠⣦⡀⠘⣷⠻⣿⣿⣿⡻⡝⠷⢌⠢⣀⠉⠉⠛⠻⠟⠃⠀⠀⠀⠀⠈⠙⠻⢿⣷⣦⣄⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠐⢠⣿⣿⣿⣿⣿⣿⠀⠛⠘⡀⢸⡇⣗⠝⠊⠀⠀⠀⠙⠙⢢⡀⠀⣤⣈⣻⡿⢿⡟⢻⣷⢿⣿⣿⣿⢛⣿⣏⢻⣿⠂⠀⢀⠃⠀⠀⡸⣿⡇⠀⢻⣧⣻⣿⣿⢧⡘⢀⠀⠉⠙⠒⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣦⣄",
          "⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⡄⠀⢰⠣⠸⡟⡇⢀⣔⣾⣿⣿⣶⣶⣀⠈⠒⢿⣿⣿⣿⡷⠄⠉⠀⠸⣿⣿⢿⣿⣿⡿⠘⡿⠀⠀⡀⠀⠀⢠⣻⣿⡇⢀⢯⣿⣿⣿⡟⠀⠁⠄⣉⡀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡟⢸⠙⢻⣿⣧⠀⢸⣄⠀⠇⡧⣷⡿⢟⣿⣿⣿⢛⣿⡕⠀⠀⠈⠛⠿⠿⣷⣄⠀⠀⠙⢿⣅⣀⡿⠃⢀⠇⠀⠐⠀⠀⡀⡜⣿⠟⡇⠀⢾⣿⣿⣿⣧⠀⡀⠀⠀⠘⡦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⢀⡴⠟⣿⣿⠇⢸⣦⣸⣿⣿⡄⠘⡿⣆⠀⣷⢿⡁⠘⣿⣿⣿⣿⠿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠂⡠⠊⠀⠀⣠⡿⢀⡇⢸⣇⠀⠀⣿⣿⣿⣿⢰⡕⠄⠀⢸⡈⠛⠱⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠉⠀⠀⢸⣿⠀⣼⣿⣿⣿⣿⣿⡀⢿⠻⣆⠹⡀⠙⠀⠘⠯⣉⣠⠜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣠⡾⠀⠀⠂⣰⣿⠁⣸⠀⢸⣿⣀⣀⣿⣿⣿⣿⣾⢾⠐⡄⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠈⡏⢠⡿⢿⣿⢸⣿⣿⣷⣸⣆⠙⠧⡑⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⡹⠁⠀⠀⣰⣿⠟⠀⣳⣇⢸⣿⣿⣿⡿⣿⣿⣿⡿⢸⠀⢨⢨⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠜⠁⢸⢻⢸⡿⢞⢻⣯⢿⡖⠤⣄⠙⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜⢁⣤⢮⣾⣿⡿⠁⣰⣿⣿⢻⣿⣿⣿⢿⡏⣿⣿⠃⠀⠀⠀⣜⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣼⠃⢸⣼⣎⠸⣿⣆⠹⣿⡏⢲⡖⠀⠀⠀⠀⠀⠀⠀⢤⠄⠀⠀⠔⠁⠀⠀⠀⠰⡩⣴⣿⣿⣿⣿⡿⣡⣾⣿⣿⣿⣿⣿⣿⣏⢏⡼⠟⠁⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣦⢸⠟⣹⡄⢿⣿⣧⡹⣿⣼⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠈⣠⣿⣿⡟⣿⣿⠟⠋⠁⣿⣿⠻⣿⣿⣿⣇⠉⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⢷⢸⣾⡿⠓⠘⣉⡟⢿⣿⣿⣿⡟⢻⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣷⡿⠏⠀⠀⠀⢸⣿⡄⠘⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣾⠿⠋⢀⣼⠘⢋⡴⢁⣴⠿⠃⢀⢿⣿⣿⢿⣾⣿⣿⡟⠉⠓⠤⣄⡀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⣸⣄⢿⣿⣞⠙⣿⣿⡿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
          "⠀⠀⣀⣠⡤⠶⢖⣿⣿⡿⠟⢁⣠⣾⡭⠒⠃⣴⣿⢟⢃⠁⠀⡼⣾⣿⢯⡾⣿⣿⡿⠁⠀⠀⠀⠀⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⢀⡆⠀⣿⣿⣾⠹⣿⣷⣜⢿⣷⡙⢿⡿⠿⠿⣦⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        },
        opts = { hl = pick_color(), shrink_margin = false, position = "center" },
      },
    }
    -- dashboard.section.header.val = {
    --   {
    --     type = "text",
    --     val = "   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    --     opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    --     opts = { hl = "NeovimDashboardLogo2", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    --     opts = { hl = "NeovimDashboardLogo3", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    --     opts = { hl = "NeovimDashboardLogo4", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    --     opts = { hl = "NeovimDashboardLogo5", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "text",
    --     val = "   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    --     opts = { hl = "NeovimDashboardLogo6", shrink_margin = false, position = "center" },
    --   },
    --   {
    --     type = "padding",
    --     val = 1,
    --   },
    -- }
    -- stylua: ignore
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file",       "<cmd> Telescope find_files <cr>"),
      dashboard.button("n", " " .. " New file",        "<cmd> ene <BAR> startinsert <cr>"),
      dashboard.button("r", " " .. " Recent files",    "<cmd> Telescope oldfiles <cr>"),
      dashboard.button("d", " " .. " Codefield ACM", ":cd ~/codefield/cpp/exercise | :Telescope find_files<CR>"),
      dashboard.button("t", " " .. " Codefield GO", ":cd ~/codefield/go | :Telescope find_files<CR>"),
      --dashboard.button("c", " " .. " Config",          "<cmd> lua require('lazyvim.util').telescope.config_files()() <cr>"),
      dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("S", " " .. " Change plugins", ":cd ~/.config/nvim | :Telescope find_files<CR>"),
      --dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
    }
    --vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#311B92" }) -- Dark Indigo
    --vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#D1C4E9" }) -- Light Purple
    --vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#8BC34A" }) -- Greenish
    --vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#edd691" })

    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 3
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local v = vim.version()
        local dev = ""
        if v.prerelease == "dev" then
          dev = "-dev+" .. v.build
        else
          dev = ""
        end
        local stats = require("lazy").stats()
        local time = vim.fn.strftime("%H:%M:%S")
        local date = vim.fn.strftime("%d.%m.%Y")
        local version = v.major .. "." .. v.minor .. "." .. v.patch .. dev
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        local line1 = "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"

        local line2 = "󰃭 " .. date .. "  " .. time
        local line3 = " " .. version
        local line1_width = vim.fn.strdisplaywidth(line1)
        local line2Padded = string.rep(" ", (line1_width - vim.fn.strdisplaywidth(line2)) / 2) .. line2
        local line3Padded = string.rep(" ", (line1_width - vim.fn.strdisplaywidth(line3)) / 2) .. line3

        dashboard.section.footer.val = {
          line1,
          line2Padded,
          line3Padded,
        }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
