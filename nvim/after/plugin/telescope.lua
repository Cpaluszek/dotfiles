local builtin = require('telescope.builtin')

-- pf - project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- git files search
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

-- project search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)