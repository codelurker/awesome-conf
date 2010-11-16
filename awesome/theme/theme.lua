-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper_cmd = { 'awsetbg -f ' .. awful.util.getdir("config") .. '/theme/wallpaper.png' }
-- }}}

-- {{{ Styles
theme.font      = "sans 8"

-- {{{ Colors
theme.fg_normal = "#DCDCCC"
theme.fg_focus  = "#F0DFAF"
theme.fg_urgent = "#CC9393"
theme.bg_normal = "#3F3F3F"
theme.bg_focus  = "#1E2320"
theme.bg_urgent = "#3F3F3F"
-- }}}

-- {{{ Borders
theme.border_width  = "2"
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#6F6F6F"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
theme.fg_widget        = "#AECF96"
theme.fg_center_widget = "#88A175"
theme.fg_end_widget    = "#FF5656"
theme.bg_widget        = "#494B4F"
theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "15"
theme.menu_width  = "100"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = awful.util.getdir("config") .. "/theme/taglist/squarefz.png"
theme.taglist_squares_unsel = awful.util.getdir("config") .. "/theme/taglist/squarez.png"
theme.widget_mpd            = awful.util.getdir("config") .. "/theme/icons/music.png"
theme.widget_bat            = awful.util.getdir("config") .. "/theme/icons/bat.png"
theme.widget_cpu            = awful.util.getdir("config") .. "/theme/icons/cpu.png"
theme.widget_vol            = awful.util.getdir("config") .. "/theme/icons/vol.png"
theme.widget_time           = awful.util.getdir("config") .. "/theme/icons/time.png"
theme.widget_nup            = awful.util.getdir("config") .. "/theme/icons/up.png"
theme.widget_ndown          = awful.util.getdir("config") .. "/theme/icons/down.png"
theme.widget_disk           = awful.util.getdir("config") .. "/theme/icons/disk.png"
theme.widget_pacicon        = awful.util.getdir("config") .. "/theme/icons/pacman.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = awful.util.getdir("config") .. "/theme/awesome-icon.png"
theme.menu_submenu_icon      = awful.util.getdir("config") .. "/theme/submenu.png"
theme.tasklist_floating_icon = awful.util.getdir("config") .. "/theme/tasklist/floatingw.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = awful.util.getdir("config") .. "/theme/layouts/tile.png"
theme.layout_tileleft   = awful.util.getdir("config") .. "/theme/layouts/tileleft.png"
theme.layout_tilebottom = awful.util.getdir("config") .. "/theme/layouts/tilebottom.png"
theme.layout_tiletop    = awful.util.getdir("config") .. "/theme/layouts/tiletop.png"
theme.layout_fairv      = awful.util.getdir("config") .. "/theme/layouts/fairv.png"
theme.layout_fairh      = awful.util.getdir("config") .. "/theme/layouts/fairh.png"
theme.layout_spiral     = awful.util.getdir("config") .. "/theme/layouts/spiral.png"
theme.layout_dwindle    = awful.util.getdir("config") .. "/theme/layouts/dwindle.png"
theme.layout_max        = awful.util.getdir("config") .. "/theme/layouts/max.png"
theme.layout_fullscreen = awful.util.getdir("config") .. "/theme/layouts/fullscreen.png"
theme.layout_magnifier  = awful.util.getdir("config") .. "/theme/layouts/magnifier.png"
theme.layout_floating   = awful.util.getdir("config") .. "/theme/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = awful.util.getdir("config") .. "/theme/titlebar/close_focus.png"
theme.titlebar_close_button_normal = awful.util.getdir("config") .. "/theme/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = awful.util.getdir("config") .. "/theme/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = awful.util.getdir("config") .. "/theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = awful.util.getdir("config") .. "/theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = awful.util.getdir("config") .. "/theme/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = awful.util.getdir("config") .. "/theme/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = awful.util.getdir("config") .. "/theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = awful.util.getdir("config") .. "/theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = awful.util.getdir("config") .. "/theme/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = awful.util.getdir("config") .. "/theme/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = awful.util.getdir("config") .. "/theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = awful.util.getdir("config") .. "/theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = awful.util.getdir("config") .. "/theme/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = awful.util.getdir("config") .. "/theme/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = awful.util.getdir("config") .. "/theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = awful.util.getdir("config") .. "/theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = awful.util.getdir("config") .. "/theme/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
