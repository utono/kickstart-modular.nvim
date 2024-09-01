-- lua/custom/plugins/kitty-scrollback.lua

return {
	'mikesmithgh/kitty-scrollback.nvim',
	enabled = true,
	lazy = true,
	cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
	event = { 'User KittyScrollbackLaunch' },
	opts = {
		kitty_get_text = {
			extent = 'all',
			ansi = 'false'
		}
	},
	-- version = '*', -- latest stable version, may have breaking changes if major version changed
	version = '^5.0.0', -- pin major version, include fixes and features that do not have breaking changes
	config = function()
		require('kitty-scrollback').setup()
	end,
}
