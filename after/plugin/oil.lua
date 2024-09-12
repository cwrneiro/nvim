local oio_de_soja = require('oil')
require('mini.icons').setup({})

local detail = false

oio_de_soja.setup({
	keymaps = {
		['gd'] = {
			desc = 'Toggle file detail view',
			callback = function()
				detail = not detail
				if detail then
					oio_de_soja.set_columns({ 'icon', 'permissions', 'size', 'mtime' })
				else
					oio_de_soja.set_columns({ 'icon' })
				end
			end,
		},
		['<leader>.'] = {
			desc = 'Toggle visibility of hidden files',
			callback = oio_de_soja.toggle_hidden
		}
	},
	-- view_options = {
	-- 	show_hidden = true,
	-- 	icons = {
	-- 		-- Use os ícones do mini.icons
	-- 		directory = require('mini.icons').get('directory'),
	-- 		file = require('mini.icons').get('file'),
	-- 		link = require('mini.icons').get('link'),
	-- 	}
	-- }
})


