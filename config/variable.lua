local M = {
    terminal = "kitty",
    fileManager = "nautilus",
    menu = "pkill rofi || bash ~/.config/rofi/launcher.sh -- Rofi",
    waybar = "~/.config/hypr/scripts/toggle-waybar.sh",

    browser = "/usr/local/bin/zen",
    note = "gnome-text-editor",
    code = "code",
    -- comment out because i want to use caelestia lock
    -- hyprlock = "/home/omodudu/.nix-profile/bin/hyprlock --config /home/omodudu/.config/hypr/hyprlock/hyprlock.conf",

    -- Caelestia lock
    caelestiaLock = "/home/omodudu/.nix-profile/bin/caelestia-shell ipc call lock lock",


    rofimoji = '/home/omodudu/.nix-profile/bin/rofimoji --selector rofi --selector-args "-theme /home/omodudu/.config/rofi/themes/emoji-picker.rasi" --clipboarder wl-copy --action clipboard --no-frecency --hidden-descriptions',
    wlogout = '/usr/bin/wlogout -b 5',
    themeSelector = '~/.config/waybar/scripts/themeSelector.sh',
    wallpapersSelector = "/home/omodudu/.config/waybar/scripts/wallpaperSelect.sh",
    clipboard = "~/.config/waybar/scripts/clipManager.sh",
    calculator = "/usr/bin/qalculate"
}

return M
