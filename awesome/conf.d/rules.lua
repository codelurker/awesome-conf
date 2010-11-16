-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { size_hints_honor = true,
                     border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = true,
                     keys = clientkeys,
                     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "pinentry" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },

    { rule = { class = "Emacs" },
      properties = { tag = tags[1][2],
                     switchtotag = true } },
    { rule = { class = "Opera" },
      properties = { tag = tags[1][1],
                     switchtotag = true } },
    { rule = { class = "Firefox" },
      properties = { tag = tags[1][1],
                     switchtotag = true } },
    { rule = { class = "Swiftfox" },
      properties = { tag = tags[1][1],
                     switchtotag = true } },
}
-- }}}

