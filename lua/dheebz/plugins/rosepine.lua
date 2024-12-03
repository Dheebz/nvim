return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require('rose-pine').setup({
            -- Add any configuration options here
        })
        vim.cmd('colorscheme rose-pine-main')
        -- set background to none 
        vim.cmd('highlight Normal ctermbg=none')
        vim.cmd('highlight NonText ctermbg=none')
        vim.cmd('highlight Normal guibg=none')
        vim.cmd('highlight NonText guibg=none')

    end
}
