require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n", "<leader>w", "<C-w>") -- For nvim window stuff. Instead of ctrl-w I can use ;w for controlling windows.

vim.o.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.keymap.set("n", "<leader>a", function() print "hi" end)
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sh", ":ToggleTerm<CR>", { noremap = true, silent = true })

vim.o.termguicolors = true
