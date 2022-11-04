pcall(require, "luarocks.loader") -- I don't think luarocks is installed

local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
local beautiful = require("beautiful")

local hotkeys_popup = require("awful.hotkeys_popup")

require("awful.hotkeys_popup.keys") -- Help widget for VIM, etc.

-- Load Debian menu entries
local debian = require("debian.menu")
local has_fdo, freedesktop = pcall(require, "freedesktop")

require "error_handle"
require "vardef"
require "menu"
require "wibar"
require "binds"
require "rules"
require "signals"

-- Autostart
awful.spawn.with_shell("picom")
awful.spawn.with_shell("setxkbmap -layout 'au'") -- Keyboard layout

-- Borders
beautiful.useless_gap = 3

function set_border(c)
	if c.type == "dock" then
		c.border_width = 0
		return
	end
	if c.maximized then
		c.border_width = 0
	else
		c.border_color = beautiful.border_focus
		c.border_width = 3
	end
end

client.connect_signal("property::maximized", set_border)
client.connect_signal("focus", set_border)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
