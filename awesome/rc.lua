-- Load Awesome libraries
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

-- Set Modkey
modkey = "Mod4"

-- Table of layouts
awful.layout.layouts = {
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    -- add other layouts you want
}

-- Define a tag table which will hold all screen tags.
tags = {
    names  = { "1", "2", "3", "4", "5" },
    layout = { awful.layout.layouts[1], awful.layout.layouts[2], awful.layout.layouts[3],
               awful.layout.layouts[4], awful.layout.layouts[5] }
}

-- Set up keybindings


globalkeys = gears.table.join(
    awful.key({ modkey,           }, "Return", function () awful.spawn("alacritty") end,
          {description = "open a terminal", group = "launcher"}),
)

root.keys(globalkeys)

