-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
-- require beatiful
beautiful.init(awful.util.getdir("config") .. "/theme/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "sakura"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
--    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
--    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
--    awful.layout.suit.fair.horizontal,
--    awful.layout.suit.spiral,
--    awful.layout.suit.spiral.dwindle,
--    awful.layout.suit.max,
--    awful.layout.suit.max.fullscreen,
--    awful.layout.suit.magnifier
}
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {
   names  = { "α", "β", "γ", "δ", "ε" },
   layout = { layouts[1], layouts[2], layouts[2], layouts[4], layouts[4] }
}
 
for s = 1, screen.count() do
    tags[s] = awful.tag(tags.names, s, tags.layout)
end

-- }}}
