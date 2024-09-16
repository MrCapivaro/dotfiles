local gears = require("gears")
local awful = require("awful")

local modkey = require("main.variables").modkey
local keymap = require("main.variables").keymap

local M = gears.table.join(
  -- awful.key(
  --   { modkey },
  --   "s",
  --   hotkeys_popup.show_help,
  --   { description = "show help", group = "awesome" }
  -- ),

  -- {{{ Tags
  awful.key(
    { modkey },
    "Left",
    awful.tag.viewprev,
    { description = "view previous", group = "tag" }
  ),
  awful.key(
    { modkey },
    "Right",
    awful.tag.viewnext,
    { description = "view next", group = "tag" }
  ),
  awful.key(
    { modkey },
    "Tab",
    awful.tag.history.restore,
    { description = "go back", group = "tag" }
  ),
  -- }}}

  -- {{{ Alt+Tab Funcionality
  awful.key({ "Mod1" }, "Tab", function()
    awful.client.focus.byidx(1)
  end, { description = "focus next by index", group = "client" }),
  awful.key({ "Mod1", "Shift" }, "Tab", function()
    awful.client.focus.byidx(-1)
  end, { description = "focus previous by index", group = "client" }),
  -- }}}

  -- Relative Client Focus Movement
  awful.key({ modkey }, "j", function()
    awful.client.focus.bydirection("down")
  end, { description = "focus client by direction: down", group = "client" }),

  awful.key({ modkey }, "k", function()
    awful.client.focus.bydirection("up")
  end, { description = "focus client by direction: up", group = "client" }),

  awful.key({ modkey }, "h", function()
    awful.client.focus.bydirection("left")
  end, { description = "focus client by direction: left", group = "client" }),

  awful.key({ modkey }, "l", function()
    awful.client.focus.bydirection("right")
  end, { description = "focus client by direction: right", group = "client" }),

  -- TODO: Resize Client

  -- Relative Client Swap
  awful.key({ modkey, "Control" }, "j", function()
    awful.client.swap.bydirection("down")
  end, { description = "swap client by direction: down", group = "client" }),
  awful.key({ modkey, "Control" }, "k", function()
    awful.client.swap.bydirection("up")
  end, { description = "swap client by direction: up", group = "client" }),
  awful.key({ modkey, "Control" }, "h", function()
    awful.client.swap.bydirection("left")
  end, { description = "swap client by direction: left", group = "client" }),
  awful.key({ modkey, "Control" }, "l", function()
    awful.client.swap.bydirection("right")
  end, { description = "swap client by direction: right", group = "client" }),

  -- awful.key(
  --   { modkey },
  --   "u",
  --   awful.client.urgent.jumpto,
  --   { description = "jump to urgent client", group = "client" }
  -- ),

  -- awful.key({ modkey }, "Tab", function()
  --   awful.client.focus.history.previous()
  --   if client.focus then
  --     client.focus:raise()
  --   end
  -- end, { description = "go back", group = "client" }),

  -- Standard program
  -- awful.key({ modkey }, "Return", function()
  -- 	awful.spawn("rofi -show drun")
  -- end, { description = "open rofi", group = "launcher" }),

  awful.key(
    { modkey },
    "r",
    awesome.restart,
    { description = "reload awesome", group = "awesome" }
  ),

  awful.key(
    { modkey, "Control" },
    "q",
    awesome.quit,
    { description = "quit awesome", group = "awesome" }
  ),

  -- awful.key(
  --   { modkey, "Shift" },
  --   "h",
  --   function()
  --     awful.tag.incnmaster(1, nil, true)
  --   end,
  --   { description = "increase the number of master clients", group = "layout" }
  -- ),

  -- awful.key(
  --   { modkey, "Shift" },
  --   "l",
  --   function()
  --     awful.tag.incnmaster(-1, nil, true)
  --   end,
  --   { description = "decrease the number of master clients", group = "layout" }
  -- ),

  -- awful.key({ modkey, "Control" }, "h", function()
  --   awful.tag.incncol(1, nil, true)
  -- end, { description = "increase the number of columns", group = "layout" }),

  -- awful.key({ modkey, "Control" }, "l", function()
  --   awful.tag.incncol(-1, nil, true)
  -- end, { description = "decrease the number of columns", group = "layout" }),

  awful.key({ modkey }, "space", function()
    awful.layout.inc(1)
  end, { description = "select next", group = "layout" }),

  awful.key({ modkey, "Control" }, "n", function()
    local c = awful.client.restore()
    -- Focus restored client
    if c then
      c:emit_signal("request::activate", "key.unminimize", { raise = true })
    end
  end, { description = "restore minimized", group = "client" }),

  -- Rofi
  awful.key({ modkey }, "Return", function()
    awful.spawn("rofi -show drun")
  end, { description = "rofi dmenu", group = "launcher" }),

  -- Toggle keymap from US to US(intl.)
  awful.key({ modkey }, "[", function()
    if keymap == "us intl" then
      awful.spawn("setxkbmap us")
      keymap = "us"
    elseif keymap == "us" then
      awful.spawn("setxkbmap us -variant intl")
      keymap = "us intl"
    end
  end, { description = "toggle keymap: US - US(intl.)", group = "awesome" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 3 do
  M = gears.table.join(
    M,
    -- View tag only.
    awful.key({ modkey }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        tag:view_only()
      end
    end, { description = "view tag #" .. i, group = "tag" }),
    -- Toggle tag display.
    awful.key({ modkey, "Control" }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        awful.tag.viewtoggle(tag)
      end
    end, { description = "toggle tag #" .. i, group = "tag" }),
    -- Move client to tag.
    awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end, { description = "move focused client to tag #" .. i, group = "tag" }),
    -- Toggle tag on focused client.
    awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:toggle_tag(tag)
        end
      end
    end, {
      description = "toggle focused client on tag #" .. i,
      group = "tag",
    })
  )
end

return M
