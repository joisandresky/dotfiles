-- everforest
-- return {
--   "sainnhe/everforest",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.everforest_diagnostic_line_highlight = 1
--     vim.g.everforest_enable_italic = true
--     vim.g.everforest_transparent_background = 1
--     vim.g.everforest_better_performance = 1
--     vim.cmd.colorscheme("everforest")
--   end,
-- }

-- catpuccin
--
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
--
