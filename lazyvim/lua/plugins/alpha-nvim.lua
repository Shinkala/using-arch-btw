return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
        =================     ===============     ===============   ========  ========
        \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //
        ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||
        || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||
        ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||
        || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||
        ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||
        || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||
        ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||
        ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||
        ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||
        ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||
        ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||
        ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||
        ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   ||
        ||.=='    _-'                       N V I M                       `' |  /==.||
        =='    _-'                                                            \/   `==
        \   _-'                                                                `-_   /
        `''                                                                      ``'
    ]]
    dashboard.section.header.val = vim.split(logo, "\n")
  end,
}
