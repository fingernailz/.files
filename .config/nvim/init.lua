local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

vim.opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}

local plugins = {

  --themes
  { "EdenEast/nightfox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "folke/tokyonight.nvim" },
  { "datsfilipe/vesper.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "Tsuzat/NeoSolarized.nvim" },

  --snippets
  {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
},

 --treesitter
{
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup()

    require("nvim-treesitter").install({
      "lua",
      "vim",
      "vimdoc",
      "python",
      "javascript",
      "typescript",
      "html",
      "css",
      "json",
      "bash",
      "c",
      "cpp",
      "rust",
      "go",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local ok, lang =
          pcall(vim.treesitter.language.get_lang, vim.bo[args.buf].filetype)

        if ok and lang then
          pcall(vim.treesitter.start, args.buf, lang)
        end
      end,
    })
  end,
},
{
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({})
  end,
},
}

-- Add LSP/completion plugins
vim.list_extend(plugins, require("lsp"))

local opts = {}

require("lazy").setup(plugins, opts)

require("commands.cmds")
require("keybindings.bindings")
require("colorscheme.cs")

local c = {
  fg       = "#E6DFF2",
  pink     = "#FF6B9D",
  red      = "#FF5555",
  lavender = "#E8B4F8",
  purple   = "#C7A7FF",
  cyan     = "#7DD3FC",
  teal     = "#7FDBCA",
  green    = "#6FBAA0",
  yellow   = "#F6C177",
  orange   = "#FF9E64",
  muted    = "#635A72",
}

local hl = vim.api.nvim_set_hl

-- ── Variables ─────────────────────────────

hl(0, "@variable", {
  fg = c.fg,
})

hl(0, "@variable.builtin", {
  fg = c.pink,
  italic = true,
})

hl(0, "@variable.parameter", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@variable.member", {
  fg = c.purple,
})

-- ── Functions ─────────────────────────────

hl(0, "@function", {
  fg = c.cyan,
  bold = true,
})

hl(0, "@function.call", {
  fg = c.cyan,
})

hl(0, "@function.builtin", {
  fg = c.teal,
})

hl(0, "@function.method", {
  fg = c.cyan,
  bold = true,
})

hl(0, "@function.method.call", {
  fg = c.cyan,
})

-- ── Keywords ──────────────────────────────

hl(0, "@keyword", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.function", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.return", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.operator", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.conditional", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.repeat", {
  fg = c.pink,
  bold = true,
})

hl(0, "@keyword.import", {
  fg = c.purple,
  bold = true,
})

-- ── Strings ───────────────────────────────

hl(0, "@string", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@string.escape", {
  fg = c.teal,
  bold = true,
})

hl(0, "@string.special", {
  fg = c.teal,
})

hl(0, "@character", {
  fg = c.lavender,
  italic = true,
})

-- ── Comments ──────────────────────────────

hl(0, "@comment", {
  fg = c.green,
  italic = true,
})

hl(0, "@comment.todo", {
  fg = c.yellow,
  bold = true,
})

hl(0, "@comment.warning", {
  fg = c.orange,
  bold = true,
})

hl(0, "@comment.error", {
  fg = c.red,
  bold = true,
})

-- ── Constants ─────────────────────────────

hl(0, "@constant", {
  fg = c.red,
  bold = true,
})

hl(0, "@constant.builtin", {
  fg = c.red,
  italic = true,
})

hl(0, "@constant.macro", {
  fg = c.orange,
})

-- ── Numbers ───────────────────────────────

hl(0, "@number", {
  fg = c.yellow,
})

hl(0, "@number.float", {
  fg = c.yellow,
})

-- ── Booleans ──────────────────────────────

hl(0, "@boolean", {
  fg = c.red,
  bold = true,
})

-- ── Types ─────────────────────────────────

hl(0, "@type", {
  fg = c.purple,
  bold = true,
})

hl(0, "@type.builtin", {
  fg = c.teal,
  bold = true,
})

hl(0, "@type.definition", {
  fg = c.purple,
  bold = true,
})

-- ── Properties / fields ───────────────────

hl(0, "@property", {
  fg = c.purple,
})

hl(0, "@field", {
  fg = c.purple,
})

-- ── Operators ─────────────────────────────

hl(0, "@operator", {
  fg = c.pink,
  bold = true,
})

hl(0, "@punctuation.delimiter", {
  fg = c.muted,
})

hl(0, "@punctuation.bracket", {
  fg = c.fg,
})

-- ── Modules / namespaces ─────────────────

hl(0, "@module", {
  fg = c.purple,
})

hl(0, "@namespace", {
  fg = c.purple,
})

-- ── Tags (HTML/XML/JSX) ───────────────────

hl(0, "@tag", {
  fg = c.pink,
  bold = true,
})

hl(0, "@tag.attribute", {
  fg = c.purple,
  italic = true,
})

hl(0, "@tag.delimiter", {
  fg = c.muted,
})

-- ── Attributes ────────────────────────────

hl(0, "@attribute", {
  fg = c.purple,
  italic = true,
})

-- ── Labels ────────────────────────────────

hl(0, "@label", {
  fg = c.pink,
  bold = true,
}) 
