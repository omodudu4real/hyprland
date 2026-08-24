----------------------------------
------ AUTOSTART ------
----------------------------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()

    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- xwaylandvideobridge is like a compatibility tool for running X11/Xorg windows on Wayland
    hl.exec_cmd("xwaylandvideobridge")

    -- Disable middle-click paste functionality to avoid accidental pasting
    hl.exec_cmd("wl paste -p --watch wl copy -pc")

    -- Celestia shell with custom PATH
    hl.exec_cmd("env PATH=/home/omodudu/.nix-profile/bin:$PATH XDG_DATA_DIRS=\"/usr/local/share:/usr/share:$XDG_DATA_DIRS\" /home/omodudu/.nix-profile/bin/caelestia shell -d")

    -- Persistent clipboard
    hl.exec_cmd("wl-clip-persist --clipboard regular")

    -- Start the Polkit agent
    -- The system will start it automatically
    -- hl.exec_cmd("/usr/libexec/hyprpolkitagent")

    -- Wi-Fi Tray
    hl.exec_cmd("nm-applet --indicator")

    -- Wallpaper daemon
    hl.exec_cmd("/usr/local/bin/swww-daemon")

    -- Wallpaper Restorer ## comment it out because caelestia can remember the last wallpaper
    -- hl.exec_cmd("sleep 0.2 && /home/omodudu/.config/waybar/scripts/wallpaperSelect.sh --restore")

    -- Cursor change and size
    hl.exec_cmd("hyprctl setcursor Moga-Cursor 24")

    -- Clipboard
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    -- Swaync is a notification daemon that displays notifications on Wayland
    -- ##since i am using caelestia now i will comment this out
    -- hl.exec_cmd("swaync")

    -- Lock the screen when inactive
    -- disabled because caelestia will handle idle state
    -- hl.exec_cmd("/home/omodudu/.nix-profile/bin/hypridle")

    -- Waybar  ### since i am using caelestia now i will just comment it out
    -- hl.exec_cmd("~/.config/hypr/scripts/toggle-waybar.sh")

    -- Keyboard Brightness Watcher Script
    hl.exec_cmd("~/.config/swaync/scripts/kbd_watcher.sh")
    hl.exec_cmd("~/.config/swaync/scripts/mic_watcher.sh")

end)
