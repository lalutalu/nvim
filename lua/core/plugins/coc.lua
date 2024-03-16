return {
	"neoclide/coc.nvim",
	branch = "release",
	config = function()
		local keyset = vim.keymap.set
		function _G.check_back_space()
			local col = vim.fn.col('.') - 1
			return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
		end

		keyset("i", "<c-l>", "<Plug>(coc-snippets-expand-jump)")
		keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })

		keyset("n", "[d", "<Plug>(coc-diagnostic-prev)", { silent = true })
		keyset("n", "<leader>d", "<cmd>CocDiagnostics<CR>", { desc = "[S]earch [D]iagnostics" })
		keyset("n", "]d", "<Plug>(coc-diagnostic-next)", { silent = true })

		keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
		keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
		keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
		keyset("n", "gr", "<Plug>(coc-references)", { silent = true })


		function _G.show_docs()
			local cw = vim.fn.expand('<cword>')
			if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
				vim.api.nvim_command('h ' .. cw)
			elseif vim.api.nvim_eval('coc#rpc#ready()') then
				vim.fn.CocActionAsync('doHover')
			else
				vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
			end
		end

		keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })


		vim.api.nvim_create_augroup("CocGroup", {})
		vim.api.nvim_create_autocmd("CursorHold", {
			group = "CocGroup",
			command = "silent call CocActionAsync('highlight')",
			desc = "Highlight symbol under cursor on CursorHold"
		})


		keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })


		vim.api.nvim_create_autocmd("User", {
			group = "CocGroup",
			pattern = "CocJumpPlaceholder",
			command = "call CocActionAsync('showSignatureHelp')",
			desc = "Update signature help on jump placeholder"
		})

		local opts = { silent = true, nowait = true }
		keyset("n", "<leader>ca", "<Plug>(coc-codeaction)", opts)
	end
}
