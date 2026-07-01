return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  init = function()
    local ensureInstalled = {
      "rust",
      "javascript",
      "zig",
      "json",
      "typescript",
      "tsx",
      "graphql",
      "svelte",
      "vue",
      "markdown",
      "markdown_inline",
      "html",
      "css",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "cpp",
      "prisma",
      "go",
      "python",
      "yaml",
      "proto",
    }
    local alreadyInstalled = require("nvim-treesitter.config").get_installed()
    local parsersToInstall = vim
      .iter(ensureInstalled)
      :filter(function(parser)
        return not vim.tbl_contains(alreadyInstalled, parser)
      end)
      :totable()
    require("nvim-treesitter").install(parsersToInstall)

    require("nvim-treesitter").setup({
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype

        local lang = vim.treesitter.language.get_lang(ft)
        if not lang then
          return
        end

        local ok_add = pcall(vim.treesitter.language.add, lang)
        if not ok_add then
          return
        end

        pcall(vim.treesitter.start, buf, lang)
      end,
    })
  end,
}
