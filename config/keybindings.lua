--------------------------------------
------ KEYBINDINGS ------
--------------------------------------

-- See https://wiki.hypr.land/Configuring/Keywords/

local vars = require("config.variable")

-- Sets "Windows" key as main modifier
local mainMod = "SUPER"


----------------------------------------------------------
------         APPS          ------
----------------------------------------------------------

-- Clipboard History
hl.bind(mainMod .. " + ALT + " .. "V", hl.dsp.exec_cmd(vars.clipboard))

-- Wallpaper Switcher
hl.bind(mainMod .. " + " .. "W", hl.dsp.exec_cmd(vars.wallpapersSelector))

-- Theme Switcher
hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd(vars.themeSelector))

-- Launch default applications
hl.bind(mainMod .. " + " .. "RETURN", hl.dsp.exec_cmd(vars.terminal))

-- WlogOut
hl.bind(mainMod .. " + " .. "M", hl.dsp.exec_cmd(vars.wlogout))

-- Launch hyprlock
hl.bind(mainMod .. " + " .. "L",
    hl.dsp.exec_cmd(vars.hyprlock))

-- Launch fileManager
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd(vars.fileManager))

-- Menu launcher
hl.bind(mainMod .. " + " .. "SPACE", hl.dsp.exec_cmd(vars.menu))

-- Zen Browser
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd(vars.browser))

-- Note
hl.bind(mainMod .. " + " .. "N", hl.dsp.exec_cmd(vars.note))

-- VSCode Launcher
hl.bind(mainMod .. " + " .. "C", hl.dsp.exec_cmd(vars.code))


-- Calculator
hl.bind(mainMod .. " + ALT + " .. "C", hl.dsp.exec_cmd(vars.calculator))


-- Waybar Launcher
hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd(vars.waybar))


-- Emoji Launcher
hl.bind(mainMod .. " + " .. "PERIOD", hl.dsp.exec_cmd(vars.rofimoji))


----------------------------------------------------------
------       FUNCTION        ------
----------------------------------------------------------

-- Kill active window
hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.kill())

-- Toggle fullscreen
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())

-- Toggle floating
hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())

-- Pseudo-tiling
hl.bind(mainMod .. " + " .. "P", hl.dsp.window.pseudo())

-- Toggle split
hl.bind(mainMod .. " + " .. "J", hl.dsp.layout("togglesplit"))


----------------------------------------------------------
------      SCREENSHOT       ------
----------------------------------------------------------
local hyprshot = "/home/omodudu/.nix-profile/bin/hyprshot"

hl.bind(mainMod .. " + " .. "PRINT", hl.dsp.exec_cmd(hyprshot .. " -m output"))

hl.bind(mainMod .. " + ALT + " .. "PRINT", hl.dsp.exec_cmd(hyprshot .. " -m window"))

hl.bind(mainMod .. " + CTRL + " .. "PRINT", hl.dsp.exec_cmd(hyprshot .. " -m region"))

----------------------------------------------------------
------      MOVE FOCUS      ------
----------------------------------------------------------

hl.bind(mainMod .. " + " .. "LEFT", hl.dsp.focus({ direction = "l" }))

hl.bind(mainMod .. " + " .. "RIGHT", hl.dsp.focus({ direction = "r" }))

hl.bind(mainMod .. " + " .. "UP", hl.dsp.focus({ direction = "u" }))

hl.bind(mainMod .. " + " .. "DOWN", hl.dsp.focus({ direction = "d" }))


----------------------------------------------------------
------      WORKSPACES      ------
----------------------------------------------------------

hl.bind(mainMod .. " + " .. "1", hl.dsp.focus({ workspace = "1" }))

hl.bind(mainMod .. " + " .. "2", hl.dsp.focus({ workspace = "2" }))

hl.bind(mainMod .. " + " .. "3", hl.dsp.focus({ workspace = "3" }))

hl.bind(mainMod .. " + " .. "4", hl.dsp.focus({ workspace = "4" }))

hl.bind(mainMod .. " + " .. "5", hl.dsp.focus({ workspace = "5" }))

hl.bind(mainMod .. " + " .. "6", hl.dsp.focus({ workspace = "6" }))

hl.bind(mainMod .. " + " .. "7", hl.dsp.focus({ workspace = "7" }))

hl.bind(mainMod .. " + " .. "8", hl.dsp.focus({ workspace = "8" }))

hl.bind(mainMod .. " + " .. "9", hl.dsp.focus({ workspace = "9" }))

hl.bind(mainMod .. " + " .. "0", hl.dsp.focus({ workspace = "10" }))


----------------------------------------------------------
------ MOVE WINDOWS TO WORKSPACES ------
----------------------------------------------------------

hl.bind(mainMod .. " + ALT + " .. "1", hl.dsp.window.move({ workspace = "1" }))

hl.bind(mainMod .. " + ALT + " .. "2", hl.dsp.window.move({ workspace = "2" }))

hl.bind(mainMod .. " + ALT + " .. "3", hl.dsp.window.move({ workspace = "3" }))

hl.bind(mainMod .. " + ALT + " .. "4", hl.dsp.window.move({ workspace = "4" }))

hl.bind(mainMod .. " + ALT + " .. "5", hl.dsp.window.move({ workspace = "5" }))

hl.bind(mainMod .. " + ALT + " .. "6", hl.dsp.window.move({ workspace = "6" }))

hl.bind(mainMod .. " + ALT + " .. "7", hl.dsp.window.move({ workspace = "7" }))

hl.bind(mainMod .. " + ALT + " .. "8", hl.dsp.window.move({ workspace = "8" }))

hl.bind(mainMod .. " + ALT + " .. "9", hl.dsp.window.move({ workspace = "9" }))

hl.bind(mainMod .. " + ALT + " .. "0", hl.dsp.window.move({ workspace = "10" }))


----------------------------------------------------------
------ SPECIAL WORKSPACE ------
----------------------------------------------------------

hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic"))

hl.bind(mainMod .. " + SHIFT + " .. "S", hl.dsp.window.move({ workspace = "special:magic" }))


----------------------------------------------------------
------ SCROLL THROUGH WORKSPACES ------
----------------------------------------------------------

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))


----------------------------------------------------------
------ MOVE / RESIZE WINDOWS ------
----------------------------------------------------------

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


----------------------------------------------------------
------ MEDIA / BRIGHTNESS ------
----------------------------------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"))


----------------------------------------------------------
------ PLAYERCTL ------
----------------------------------------------------------

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))


----------------------------------------------------------
------ SWAYOSD ------
----------------------------------------------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/swaync/scripts/audio.sh --inc"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/swaync/scripts/audio.sh --dec"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("~/.config/swaync/scripts/audio.sh --mute"))


----------------------------------------------------------
------ MONITOR BRIGHTNESS ------
----------------------------------------------------------

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/.config/swaync/scripts/brightness.sh --inc"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.config/swaync/scripts/brightness.sh --dec"))


----------------------------------------------------------
------ EXIT HYPRLAND ------
----------------------------------------------------------

hl.bind("CTRL + ALT + " .. "DELETE", hl.dsp.exit())
