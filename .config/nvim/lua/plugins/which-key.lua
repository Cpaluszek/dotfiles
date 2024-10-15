return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    -- init = function()
    --     vim.o.timeout = true
    --     vim.o.timeoutlen = 300
    -- end,
    -- config = true,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>h",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}