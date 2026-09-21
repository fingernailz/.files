vim.g.mapleader = " "
local secondmapleader = ""

vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-y>"
  end
  return "<Tab>"
end, {
  expr = true,
  silent = true,
})

vim.keymap.set(
	'n',
	'<Leader>',
	'<NOP>',
	{
		noremap = false,
		desc = ""
	}
)

vim.keymap.set(
	'n',
	'<Leader>m',
	':noh<CR>',
	{
		noremap = true
	}
)
vim.keymap.set('n', '<Leader>l', '<C-w>l', { desc = 'Move to left split' })
vim.keymap.set('n', '<Leader>h','<C-w>j', { desc = 'Move to below split' })
vim.keymap.set('n', '<Leader>k', '<C-w>k', { desc = 'Move to above split' })
vim.keymap.set('n', '<Leader>h', '<C-w>h', { desc = 'Move to right split' })

vim.keymap.set('n', '<Leader>w', ':w<CR>', {
	noremap = true,
	desc = "write"
})

vim.keymap.set('n', '<Leader>q', ':q!<CR>', {
	noremap = true,
	desc = "force quit"
})

vim.keymap.set(
	'n',
	'<Leader>t',
	':tabnew<CR>',
	{
		noremap = true,
		desc = "Create new tab"
	}
)

vim.keymap.set(
	'n',
	'<Leader>e',
	':Explore<CR>',
	{
		noremap = true,
		desc = "Open explorer"
	}
)

vim.keymap.set(
	'n',
	'<Leader>b',
	':wq!<CR>',
	{
		noremap = true,
		desc = "force quit with saving changes"
	}
)

vim.keymap.set(
	'n',
	'<Leader>1',
	':tabfirst<CR>',
	{
		noremap = true,
		desc = "Move to first tab"
	}
)

vim.keymap.set(
	'n',
	'<Leader>2',
	':tabn 2 <CR>',
	{
		noremap = true,
		desc = "Move to second tab"
	}
)

vim.keymap.set(
	'n',
	'<Leader>3',
	':tabn 3 <CR>',
	{
		noremap = true,
		desc = "Move to the third tab"
	}
)

vim.keymap.set(
	'n',
	'<Leader>c',
	':vsplit ~/.config/nvim/init.lua<CR>',
	{
		noremap = true,
		desc = "open neovim config"
	}
)

vim.keymap.set(
	'n',
	'<Leader>=',
	':tabnext<CR>'
)

vim.keymap.set(
	'n',
	'<Leader>-',
	':tabprevious<CR>'
)

vim.keymap.set(
	'n',
	'cu',
	':undo <CR>'
)

vim.keymap.set(
	'n',
	'cr',
	':redo <CR>'
)
		
vim.keymap.set(
	'n',
	'cpf',
	':%y+<CR>',
	{
		desc = "to copy the entire file to the clipboard"
	}
)

vim.keymap.set(
	'n',
	'cpl',
	':y+<CR>',
	{
		desc = "to copy a line to the clipboard"
	}
)

vim.keymap.set(
	'n',
	'<Leader>v',
	':vnew .<CR>',
	{
		desc = "open a new vertical tab"
	}
)

vim.keymap.set(
	'n',
	'<Leader>j',
	':gt<CR>'
)

vim.keymap.set("n", "<Leader>]", ">>", {
  desc = "Indent line",
})

vim.keymap.set("n", "<Leader>[>", "<<", {
  desc = "Unindent line",
})

vim.keymap.set("v", "<Leader>]", ">gv", {
  desc = "Indent selection",
})

vim.keymap.set("v", "<Leader>[", "<gv", {
  desc = "Unindent selection",
})
vim.keymap.set(
	'n',
	'<Leader>k',
	':gT<CR>'
)

