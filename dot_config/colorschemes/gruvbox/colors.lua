local M = {}

-- All colors
M.colors = {
    dark0_hard = "#1d2021",
    dark0 = "#282828",
    dark0_soft = "#32302f",
    dark1 = "#3c3836",
    dark2 = "#504945",
    dark3 = "#665c54",
    dark4 = "#7c6f64",
    light0_hard = "#f9f5d7",
    light0 = "#fbf1c7",
    light0_soft = "#f2e5bc",
    light1 = "#ebdbb2",
    light2 = "#d5c4a1",
    light3 = "#bdae93",
    light4 = "#a89984",
    bright_red = "#fb4934",
    bright_green = "#b8bb26",
    bright_yellow = "#fabd2f",
    bright_blue = "#83a598",
    bright_purple = "#d3869b",
    bright_aqua = "#8ec07c",
    bright_orange = "#fe8019",
    neutral_red = "#cc241d",
    neutral_green = "#98971a",
    neutral_yellow = "#d79921",
    neutral_blue = "#458588",
    neutral_purple = "#b16286",
    neutral_aqua = "#689d6a",
    neutral_orange = "#d65d0e",
    faded_red = "#9d0006",
    faded_green = "#79740e",
    faded_yellow = "#b57614",
    faded_blue = "#076678",
    faded_purple = "#8f3f71",
    faded_aqua = "#427b58",
    faded_orange = "#af3a03",
    dark_red_hard = "#792329",
    dark_red = "#722529",
    dark_red_soft = "#7b2c2f",
    light_red_hard = "#fc9690",
    light_red = "#fc9487",
    light_red_soft = "#f78b7f",
    dark_green_hard = "#5a633a",
    dark_green = "#62693e",
    dark_green_soft = "#686d43",
    light_green_hard = "#d3d6a5",
    light_green = "#d5d39b",
    light_green_soft = "#cecb94",
    dark_aqua_hard = "#3e4934",
    dark_aqua = "#49503b",
    dark_aqua_soft = "#525742",
    light_aqua_hard = "#e6e9c1",
    light_aqua = "#e8e5b5",
    light_aqua_soft = "#e1dbac",
    gray = "#928374",
}

local colors = M.colors

M.dark = {
    bg0 = colors.dark0,
    bg1 = colors.dark1,
    bg2 = colors.dark2,
    bg3 = colors.dark3,
    bg4 = colors.dark4,
    fg0 = colors.light0,
    fg1 = colors.light1,
    fg2 = colors.light2,
    fg3 = colors.light3,
    fg4 = colors.light4,
    red = colors.bright_red,
    green = colors.bright_green,
    yellow = colors.bright_yellow,
    blue = colors.bright_blue,
    purple = colors.bright_purple,
    aqua = colors.bright_aqua,
    orange = colors.bright_orange,
    neutral_red = colors.neutral_red,
    neutral_green = colors.neutral_green,
    neutral_yellow = colors.neutral_yellow,
    neutral_blue = colors.neutral_blue,
    neutral_purple = colors.neutral_purple,
    neutral_aqua = colors.neutral_aqua,
    dark_red = colors.dark_red,
    dark_green = colors.dark_green,
    dark_aqua = colors.dark_aqua,
    gray = colors.gray,
}

M.light = {
    bg0 = colors.light0,
    bg1 = colors.light1,
    bg2 = colors.light2,
    bg3 = colors.light3,
    bg4 = colors.light4,
    fg0 = colors.dark0,
    fg1 = colors.dark1,
    fg2 = colors.dark2,
    fg3 = colors.dark3,
    fg4 = colors.dark4,
    red = colors.faded_red,
    green = colors.faded_green,
    yellow = colors.faded_yellow,
    blue = colors.faded_blue,
    purple = colors.faded_purple,
    aqua = colors.faded_aqua,
    orange = colors.faded_orange,
    neutral_red = colors.neutral_red,
    neutral_green = colors.neutral_green,
    neutral_yellow = colors.neutral_yellow,
    neutral_blue = colors.neutral_blue,
    neutral_purple = colors.neutral_purple,
    neutral_aqua = colors.neutral_aqua,
    dark_red = colors.light_red,
    dark_green = colors.light_green,
    dark_aqua = colors.light_aqua,
    gray = colors.gray,
}

return M
