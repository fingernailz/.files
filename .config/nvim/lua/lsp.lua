return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "clangd", -- C / C++
        "gopls",  -- Go
        "pyright", -- Python
        "ts_ls",  -- JavaScript / TypeScript
      },
    },
  },

  {
    "saghen/blink.cmp",
    version = "1.*",
    opts = {
      keymap = {
        preset = "enter",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = {
          "lsp",
          "path",
          "buffer",
        },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable({
        "clangd",
        "gopls",
        "pyright",
        "ts_ls",
      })
    end,
  },
}
