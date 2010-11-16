-- {{{ Wibox
-- require vicious

-- Create a textclock widget
timeicon       = widget({ type	= "imagebox" })
timeicon.image = image(beautiful.widget_time)
textclock = awful.widget.textclock({ align = "right" })

-- Create a systray
systray = widget({ type = "systray" })

separator = widget({ type = "textbox" })
separator.text  = " | "

mpdicon       = widget({ type	= "imagebox" })
mpdicon.image = image(beautiful.widget_mpd)
mpdwidget     = widget({ type = "textbox" })
vicious.register(mpdwidget, vicious.widgets.mpd, function (widget, args)
		if args["{state}"] == "Stop" then
			return	'<span color="white"> ■ Stop</span>'
		elseif args["{state}"] == "Pause" then
--			return	'<span color="white">❚❚ paused</span>'
                        return	' ❚❚ ' .. args["{Artist}"] .. ' - ' .. args["{Title}"]
		else
			return	' ▶ ' .. args["{Artist}"] .. ' - ' .. args["{Title}"]
		end
	end, 1)

baticon       = widget({ type	= "imagebox" })
baticon.image = image(beautiful.widget_bat)
batwidget = widget({ type = "textbox" })
vicious.register(batwidget, vicious.widgets.bat, "<span color='white'>$1 $2%</span>", 12, "BAT1")


cpuicon       = widget({ type	= "imagebox" })
cpuicon.image = image(beautiful.widget_cpu)

cpuwidget = awful.widget.graph()
cpuwidget:set_width(30)
cpuwidget:set_background_color("#3F3F3F")
cpuwidget:set_color("#FF5656")
cpuwidget:set_gradient_colors({ "#FF5656", "#88A175", "#AECF96" })
vicious.register(cpuwidget, vicious.widgets.cpu, "$1", 1)

diskicon       = widget({ type	= "imagebox" })
diskicon.image = image(beautiful.widget_disk)
fswidget = widget({ type = 'textbox'})
vicious.register(fswidget, vicious.widgets.fs, 'root: ${/ avail_gb}/${/ size_gb}GB | /home: ${/home avail_gb}/${/home size_gb}Gb')

volicon       = widget({ type	= "imagebox" })
volicon.image = image(beautiful.widget_vol)
volumewidget = widget({ type = "textbox"}) 
vicious.register(volumewidget, vicious.widgets.volume, '$1%', 1, "Master") 

vicious.cache(vicious.widgets.net)

ndownicon       = widget({ type	= "imagebox" })
ndownicon.image = image(beautiful.widget_ndown)
netdwidget = widget({ type = "textbox"})
vicious.register(netdwidget, vicious.widgets.net, '${wlan0 down_kb}kb')

nupicon         = widget({ type	= "imagebox" })
nupicon.image   = image(beautiful.widget_nup)
netuwidget = widget({ type = "textbox"}) 
vicious.register(netuwidget, vicious.widgets.net, '${wlan0 up_kb}kb')

pacicon         = widget({ type	= "imagebox" })
pacicon.image   = image(beautiful.widget_pacicon)
pacwidget = widget({type="textbox"})
vicious.register(pacwidget, vicious.widgets.pkg, "<span color='white'></span> $1 ", 1800, "Arch")

function get_layout()
    local filedescriptor = io.popen("skb a")
    local value = filedescriptor:read()
    filedescriptor:close()
    return value
end

-- Add hook for switch key layout
awful.hooks.timer.register(1,  function() keylayout.text = get_layout() end)

keylayout = widget({type = 'textbox', name="keylayout", align = 'right'})

-- Create a wiboxs for each screen and add it
wibox_top = {}
wibox_bot = {}
promptbox = {}
layoutbox = {}
taglist = {}
taglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, awful.tag.viewnext),
                    awful.button({ }, 5, awful.tag.viewprev)
                    )
tasklist = {}
tasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if not c:isvisible() then
                                                  awful.tag.viewonly(c:tags()[1])
                                              end
                                              client.focus = c
                                              c:raise()
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=250 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))

for s = 1, screen.count() do
    -- Create a promptbox for each screen
    promptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    layoutbox[s] = awful.widget.layoutbox(s)
    layoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    taglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, taglist.buttons)

    -- Create a tasklist widget
    tasklist[s] = awful.widget.tasklist(function(c)
                                              return awful.widget.tasklist.label.currenttags(c, s)
                                          end, tasklist.buttons)

    -- Create the top wibox {{{
    wibox_top[s] = awful.wibox({ position = "top", screen = s })
    -- Add widgets to the wibox - order matters
    wibox_top[s].widgets = {
        {
            -- From menu.lua
            launcher,
            taglist[s],
            promptbox[s],
            layout = awful.widget.layout.horizontal.leftright
        },
        layoutbox[s],
        s == 1 and systray or nil,
        tasklist[s],
        layout = awful.widget.layout.horizontal.rightleft
    }
    -- }}}
    
    -- Create the bottom wibox {{{
    wibox_bot[s] = awful.wibox({ position = "bottom", screen = s })
    wibox_bot[s].widgets = {
        {
            cpuwidget,
            separator,
            diskicon,
            fswidget,
            separator,
            pacicon,
            pacwidget,
            separator,
            ndownicon,
            netdwidget,
            nupicon,
            netuwidget,
            layout = awful.widget.layout.horizontal.leftright
        },
        textclock,
        timeicon,
        separator,
        keylayout,
        separator,
        batwidget,
        baticon,
        separator,
        volumewidget,
        volicon,
        separator,
        mpdwidget,
	layout = awful.widget.layout.horizontal.rightleft
    }
    -- }}}
end
-- }}}
