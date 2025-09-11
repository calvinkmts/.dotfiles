return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    lazy = false,
    build = ':TSUpdate', 

    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = {
                'lua', 'vim', 'vimdoc', 'markdown', 'markdown_inline', 
                'regex', 'bash', 'json', 'toml', 'yaml',
                'python', 'javascript', 'typescript', 'tsx', 'sql', 'dockerfile'
            },

            sync_install = true,
            auto_install = true,

            highlight = {
                enable = true, 
                additional_vim_regex_highlighting = false,
            }
        })
    end
}
