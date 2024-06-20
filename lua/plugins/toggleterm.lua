return {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = { { "<c-_>", "<cmd>ToggleTerm<cr>" } },
    opts = {
        open_mapping = [[<c-_>]],
        size = 60,
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        highlights = {},
        shell = "pwsh.exe -NoLog /NoLogo",
        float_opts = {
            border = "curved",
            winblend = 0,
        },
    },
}