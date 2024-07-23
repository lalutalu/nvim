return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvim_web_devicons = require('nvim-web-devicons')

        -- Get the Vim icon
		local vim_icon, vim_icon_hl = nvim_web_devicons.get_icon("vim")
		vim_icon_hl = "Green"

        -- Mapping of mode letters to full mode names
        local mode_map = {
            n = "Normal",
            i = "Insert",
            v = "Visual",
            V = "V-Line",
            [""] = "V-Block", -- This is a special case for visual block mode
            c = "Command",
            R = "Replace",
            t = "Terminal"
        }

        -- Function to get the full mode name
        local function get_mode_name()
            local mode = vim.fn.mode()
            return mode_map[mode] or "Unknown"
        end

        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "auto",
            },
            sections = {
                lualine_a = {{
                    function()
                        return vim_icon .. ' ' .. get_mode_name()
                    end,
                }},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        })
    end
}
