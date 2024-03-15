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

		-- Use `[g` and `]g` to navigate diagnostics
		-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
		keyset("n", "[d", "<Plug>(coc-diagnostic-prev)", { silent = true })
		keyset("n", "<leader>d", "<cmd>CocDiagnostics<CR>", { desc = "[S]earch [D]iagnostics" })
		keyset("n", "]d", "<Plug>(coc-diagnostic-next)", { silent = true })

		-- GoTo code navigation
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


		-- Update signature help on jump placeholder
		vim.api.nvim_create_autocmd("User", {
			group = "CocGroup",
			pattern = "CocJumpPlaceholder",
			command = "call CocActionAsync('showSignatureHelp')",
			desc = "Update signature help on jump placeholder"
		})

		local opts = { silent = true, nowait = true }
		keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
		keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

		-- Remap keys for apply code actions at the cursor position.
		keyset("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", opts)
		-- Remap keys for apply code actions affect whole buffer.
		keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)
		-- Remap keys for applying codeActions to the current buffer
		keyset("n", "<leader>ca", "<Plug>(coc-codeaction)", opts)
		-- Apply the most preferred quickfix action on the current line.
		keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

		-- Remap <C-f> and <C-b> to scroll float windows/popups
		---@diagnostic disable-next-line: redefined-local
		local opts = { silent = true, nowait = true, expr = true }
		keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
		keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
		keyset("i", "<C-f>",
			'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
		keyset("i", "<C-b>",
			'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
		keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
		keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


		-- Add `:OR` command for organize imports of the current buffer
		vim.api.nvim_create_user_command("OR",
			"call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

		vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")
		---@diagnostic disable-next-line: redefined-local
		local opts = { silent = true, nowait = true }
		-- Show all diagnostics
		-- keyset("n", "<space>a", ":<C-u>CocListdiagnostics<cr>", opts)
		-- Manage extensions
		keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
		-- Show commands
		keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
		-- Find symbol of current document
		keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
		-- Search workspace symbols
		keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
		-- Do default action for next item
		keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
		-- Do default action for previous item
		keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
		-- Resume latest coc list
		keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
	end
}
