-- {{{ Menu
-- Create a laucher widget and a main menu

awesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

mainmenu = awful.menu({ items = { { "awesome", awesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal }
                                  }
                        })

launcher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mainmenu })
-- }}}

