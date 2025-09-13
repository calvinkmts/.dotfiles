return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function(_, opts)
        local telescope = require('telescope')
        telescope.setup(opts)

        require('keys.telescope').setup()
    end,
}
