return {
    "akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				highlights = {
					buffer_selected = {
						italic = false,
						bold = true,
					},
				},
				options = {
					indicator = {
						icon = "",
						style = "none",
					},
					diagnostics = false,
					show_buffer_close_icons = false,
					always_show_bufferline = false,
				}
})
	end
}
