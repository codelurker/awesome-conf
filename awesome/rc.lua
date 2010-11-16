-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
require("vicious")

-- require beatiful
dofile(awful.util.getdir("config") .. '/conf.d/variable.lua')

dofile(awful.util.getdir("config") .. '/conf.d/menu.lua')

-- require vicious
dofile(awful.util.getdir("config") .. '/conf.d/wibox.lua')

dofile(awful.util.getdir("config") .. '/conf.d/keybindings.lua')

dofile(awful.util.getdir("config") .. '/conf.d/rules.lua')

