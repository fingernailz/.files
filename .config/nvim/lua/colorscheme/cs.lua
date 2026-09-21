require("tokyonight").setup({
  style = "moon",
  transparent = true,
  terminal_colors = true,
})

vim.cmd.colorscheme("tokyonight-moon")

local hl = vim.api.nvim_set_hl

local c = {
  fg       = "#D6D9E8",

  blue     = "#82AAFF",
  lavender = "#C792EA",
  purple   = "#9D8CFF",

  cyan     = "#89DDFF",
  teal     = "#80CBC4",

  green    = "#A6DA95",

  yellow   = "#FFCB6B",
  orange   = "#F78C6C",
  red      = "#F07178",

  muted    = "#596275",
  subtle   = "#41475A",

  white    = "#EEF2FF",
}

hl(0, "Normal", {
  fg = c.fg,
  bg = "NONE",
})

hl(0, "NormalNC", {
  fg = c.fg,
  bg = "NONE",
})

hl(0, "SignColumn", {
  bg = "NONE",
})

hl(0, "FoldColumn", {
  fg = c.muted,
  bg = "NONE",
})

hl(0, "LineNr", {
  fg = c.muted,
  bg = "NONE",
})

hl(0, "CursorLineNr", {
  fg = c.lavender,
  bg = "NONE",
  bold = true,
})

hl(0, "CursorLine", {
  bg = "NONE",
})

hl(0, "EndOfBuffer", {
  fg = c.subtle,
  bg = "NONE",
})

-- =========================================================
-- Cursor
-- =========================================================

hl(0, "Cursor", {
  fg = c.fg,
  bg = c.lavender,
})

hl(0, "lCursor", {
  fg = c.fg,
  bg = c.lavender,
})

hl(0, "CursorIM", {
  fg = c.fg,
  bg = c.lavender,
})

-- =========================================================
-- Selection / Search
-- =========================================================

hl(0, "Visual", {
  fg = c.white,
  bg = "#41475A",
})

hl(0, "VisualNOS", {
  fg = c.white,
  bg = "#41475A",
})

hl(0, "Search", {
  fg = "#151821",
  bg = c.yellow,
})

hl(0, "IncSearch", {
  fg = "#151821",
  bg = c.lavender,
})

hl(0, "CurSearch", {
  fg = "#151821",
  bg = c.lavender,
})

-- =========================================================
-- Status / Tabs
-- =========================================================

hl(0, "StatusLine", {
  fg = c.lavender,
  bg = "NONE",
})

hl(0, "StatusLineNC", {
  fg = c.muted,
  bg = "NONE",
})

hl(0, "WinSeparator", {
  fg = c.subtle,
  bg = "NONE",
})

hl(0, "VertSplit", {
  fg = c.subtle,
  bg = "NONE",
})

hl(0, "TabLine", {
  fg = c.muted,
  bg = "NONE",
})

hl(0, "TabLineFill", {
  fg = c.muted,
  bg = "NONE",
})

hl(0, "TabLineSel", {
  fg = c.lavender,
  bg = "NONE",
  bold = true,
})

-- =========================================================
-- Floating Windows
-- =========================================================

hl(0, "NormalFloat", {
  fg = c.fg,
  bg = "NONE",
})

hl(0, "FloatBorder", {
  fg = c.purple,
  bg = "NONE",
})

hl(0, "FloatTitle", {
  fg = c.lavender,
  bg = "NONE",
  bold = true,
})

-- =========================================================
-- Completion
-- =========================================================

hl(0, "Pmenu", {
  fg = c.fg,
  bg = "NONE",
})

hl(0, "PmenuSel", {
  fg = c.white,
  bg = "#41475A",
  bold = true,
})

hl(0, "PmenuSbar", {
  bg = "#41475A",
})

hl(0, "PmenuThumb", {
  bg = c.purple,
})

-- =========================================================
-- Diagnostics
-- =========================================================

hl(0, "DiagnosticError", {
  fg = c.red,
})

hl(0, "DiagnosticWarn", {
  fg = c.yellow,
})

hl(0, "DiagnosticInfo", {
  fg = c.cyan,
})

hl(0, "DiagnosticHint", {
  fg = c.teal,
})

hl(0, "DiagnosticUnderlineError", {
  undercurl = true,
  sp = c.red,
})

hl(0, "DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = c.yellow,
})

hl(0, "DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = c.cyan,
})

hl(0, "DiagnosticUnderlineHint", {
  undercurl = true,
  sp = c.teal,
})

-- =========================================================
-- Traditional Vim Syntax
-- =========================================================

hl(0, "Comment", {
  fg = c.muted,
  italic = true,
})

hl(0, "String", {
  fg = c.green,
  italic = true,
})

hl(0, "Character", {
  fg = c.green,
})

hl(0, "Number", {
  fg = c.yellow,
})

hl(0, "Boolean", {
  fg = c.orange,
  bold = true,
})

hl(0, "Constant", {
  fg = c.orange,
})

hl(0, "Identifier", {
  fg = c.fg,
})

hl(0, "Function", {
  fg = c.blue,
  bold = true,
})

hl(0, "Statement", {
  fg = c.purple,
  bold = true,
})

hl(0, "Keyword", {
  fg = c.purple,
  bold = true,
})

hl(0, "Conditional", {
  fg = c.purple,
  bold = true,
})

hl(0, "Repeat", {
  fg = c.purple,
  bold = true,
})

hl(0, "Operator", {
  fg = c.cyan,
})

hl(0, "Type", {
  fg = c.cyan,
  bold = true,
})

hl(0, "Structure", {
  fg = c.cyan,
})

hl(0, "Special", {
  fg = c.lavender,
})

hl(0, "PreProc", {
  fg = c.purple,
})

hl(0, "Todo", {
  fg = c.yellow,
  bold = true,
})

hl(0, "Error", {
  fg = c.red,
  bold = true,
})

-- =========================================================
-- Treesitter
-- =========================================================

-- Variables
hl(0, "@variable", {
  fg = c.fg,
})

hl(0, "@variable.builtin", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@variable.parameter", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@variable.parameter.builtin", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@variable.member", {
  fg = c.blue,
})

-- Functions
hl(0, "@function", {
  fg = c.blue,
  bold = true,
})

hl(0, "@function.call", {
  fg = c.blue,
})

hl(0, "@function.builtin", {
  fg = c.teal,
})

hl(0, "@function.method", {
  fg = c.blue,
  bold = true,
})

hl(0, "@function.method.call", {
  fg = c.blue,
})

hl(0, "@constructor", {
  fg = c.cyan,
  bold = true,
})

-- Keywords
hl(0, "@keyword", {
  fg = c.purple,
  bold = true,
})

hl(0, "@keyword.function", {
  fg = c.purple,
  bold = true,
})

hl(0, "@keyword.return", {
  fg = c.purple,
  bold = true,
})

hl(0, "@keyword.operator", {
  fg = c.cyan,
})

hl(0, "@keyword.conditional", {
  fg = c.purple,
  bold = true,
})

hl(0, "@keyword.repeat", {
  fg = c.purple,
  bold = true,
})

hl(0, "@keyword.import", {
  fg = c.lavender,
  bold = true,
})

hl(0, "@keyword.exception", {
  fg = c.red,
  bold = true,
})

-- Strings
hl(0, "@string", {
  fg = c.green,
  italic = true,
})

hl(0, "@string.escape", {
  fg = c.teal,
  bold = true,
})

hl(0, "@string.special", {
  fg = c.teal,
})

hl(0, "@string.regex", {
  fg = c.orange,
})

hl(0, "@character", {
  fg = c.green,
})

hl(0, "@character.special", {
  fg = c.teal,
})

-- Comments
hl(0, "@comment", {
  fg = c.muted,
  italic = true,
})

hl(0, "@comment.documentation", {
  fg = c.muted,
  italic = true,
})

hl(0, "@comment.todo", {
  fg = c.yellow,
  bold = true,
})

hl(0, "@comment.warning", {
  fg = c.yellow,
  bold = true,
})

hl(0, "@comment.error", {
  fg = c.red,
  bold = true,
})

hl(0, "@comment.note", {
  fg = c.cyan,
  bold = true,
})

-- Constants
hl(0, "@constant", {
  fg = c.orange,
  bold = true,
})

hl(0, "@constant.builtin", {
  fg = c.orange,
  italic = true,
})

hl(0, "@constant.macro", {
  fg = c.orange,
})

-- Numbers
hl(0, "@number", {
  fg = c.yellow,
})

hl(0, "@number.float", {
  fg = c.yellow,
})

-- Booleans
hl(0, "@boolean", {
  fg = c.orange,
  bold = true,
})

-- Types
hl(0, "@type", {
  fg = c.cyan,
  bold = true,
})

hl(0, "@type.builtin", {
  fg = c.teal,
  bold = true,
})

hl(0, "@type.definition", {
  fg = c.cyan,
  bold = true,
})

hl(0, "@type.qualifier", {
  fg = c.purple,
})

-- Properties / fields
hl(0, "@property", {
  fg = c.lavender,
})

hl(0, "@field", {
  fg = c.blue,
})

hl(0, "@parameter", {
  fg = c.lavender,
})

-- Operators
hl(0, "@operator", {
  fg = c.cyan,
})

-- Punctuation
hl(0, "@punctuation.delimiter", {
  fg = c.muted,
})

hl(0, "@punctuation.bracket", {
  fg = c.fg,
})

hl(0, "@punctuation.special", {
  fg = c.lavender,
})

-- Modules / namespaces
hl(0, "@module", {
  fg = c.lavender,
})

hl(0, "@namespace", {
  fg = c.lavender,
})

-- HTML / XML / JSX
hl(0, "@tag", {
  fg = c.purple,
  bold = true,
})

hl(0, "@tag.attribute", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@tag.delimiter", {
  fg = c.muted,
})

-- Attributes
hl(0, "@attribute", {
  fg = c.lavender,
  italic = true,
})

-- Labels
hl(0, "@label", {
  fg = c.purple,
  bold = true,
})

-- =========================================================
-- Markup
-- =========================================================

hl(0, "@markup.heading", {
  fg = c.lavender,
  bold = true,
})

hl(0, "@markup.strong", {
  fg = c.white,
  bold = true,
})

hl(0, "@markup.italic", {
  fg = c.lavender,
  italic = true,
})

hl(0, "@markup.link", {
  fg = c.blue,
  underline = true,
})

hl(0, "@markup.raw", {
  fg = c.green,
})

-- =========================================================
-- Diff
-- =========================================================

hl(0, "@diff.plus", {
  fg = c.green,
})

hl(0, "@diff.minus", {
  fg = c.red,
})

hl(0, "@diff.delta", {
  fg = c.yellow,
})
