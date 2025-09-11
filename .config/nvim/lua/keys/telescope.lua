local map = require('config.keymap').map
local builtin = require('telescope.builtin')

local M = {}

function M.setup()
    map('n', '<leader>pf', builtin.find_files, 'Telescope: Project Files')
    map('n', '<leader>pb', builtin.buffers, 'Telescope: Project Buffers')

    map('n', '<leader>pfg', builtin.git_files, 'Telescope: Find Project Files (git)')
end
