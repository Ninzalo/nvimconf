local config = function()
	local bufferline = require("bufferline")

	bufferline.setup({
		options = {
			numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
			close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
			right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
			middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
			indicator_icon = nil,
			-- indicator = { style = "icon", icon = "▎"},
			indicator = { style = "underline" },
			buffer_close_icon = "󰅖",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			max_name_length = 30,
			max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
			tab_size = 21,
			diagnostics = false, -- | "nvim_lsp" | "coc",
			diagnostics_update_in_insert = false,
			-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
			--   return "("..count..")"
			-- end,
			-- offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					highlight = "Directory",
					padding = 0,
					separator = true, -- use a "true" to enable the default, or set your own character
				},
			},
			show_buffer_icons = true,
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
			separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
			enforce_regular_tabs = true,
			always_show_bufferline = true,
		},
		highlights = {
			fill = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			background = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			buffer_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			close_button = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			close_button_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			tab_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			tab = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			tab_close = {
				fg = { attribute = "fg", highlight = "TabLineSel" },
				bg = { attribute = "bg", highlight = "Normal" },
			},

			duplicate_selected = {
				fg = { attribute = "fg", highlight = "TabLineSel" },
				bg = { attribute = "bg", highlight = "TabLineSel" },
				underline = true,
			},
			duplicate_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
				underline = true,
			},
			duplicate = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
				underline = true,
			},

			modified = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			modified_selected = {
				fg = { attribute = "fg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			modified_visible = {
				fg = { attribute = "fg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},

			separator = {
				fg = { attribute = "bg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			separator_selected = {
				fg = { attribute = "bg", highlight = "Normal" },
				bg = { attribute = "bg", highlight = "Normal" },
			},
			separator_visible = {
				fg = { attribute = "bg", highlight = "TabLine" },
				bg = { attribute = "bg", highlight = "TabLine" },
			},
			-- indicator_selected = {
			--   fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
			--   bg = { attribute = "bg", highlight = "Normal" },
			-- },
		},
	})
end

return {
	"akinsho/bufferline.nvim",
	lazy = false,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = config,
}
