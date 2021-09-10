vim.api.nvim_command('augroup user_plugin_cursorword')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command(
	'autocmd FileType NvimTree,lspsagafinder,dashboard let b:cursorword = 0')
vim.api.nvim_command(
	'autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif')
vim.api.nvim_command('autocmd InsertEnter * let b:cursorword = 0')
vim.api.nvim_command('autocmd InsertLeave * let b:cursorword = 1')
vim.api.nvim_command('augroup END')
