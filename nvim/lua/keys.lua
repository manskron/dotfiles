local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

-- general
map('', '<leader>q', ':q<CR>')
map('', '<leader>rc', ':luafile ~/config/nvim/init.lua<CR>')
map('', '<leader>fs', ':w<CR>')
map('', '<leader>bd', ':bd<CR>')
map('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>')

-- js/ts
map('n', '<leader>p', ':PrettierAsync<CR>')

--telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<leader>bb', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
map('n', '<leader>bg', '<cmd>Telescope current_buffer_fuzzy_find<CR>')

--nvim-tree
map('n', '<leader>n', '<cmd>NvimTreeToggle<CR>')
map('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>')
map('n', '<leader>tf', '<cmd>NvimTreeFindFile<CR>')
