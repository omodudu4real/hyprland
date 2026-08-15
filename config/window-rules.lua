------------------------------------------------------------
------ WINDOWS AND WORKSPACES ------
------------------------------------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules


-- Decoration
hl.config({
    decoration = {
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
        },
    },
})


-- Ignore maximize requests from all apps. You'll probably like this.
hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})


-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})


-- Hyprland-run windowrule
hl.window_rule({
    name = "move-hyprland-run",
    match = {
        class = "hyprland-run",
    },
    move = "20 monitor_h-120",
    float = true,
})


-- YAD
hl.window_rule({
    name = "yad",
    match = {
        class = "yad",
    },
    move = "55 60",
    float = true,
    border_size = 2,
    opacity = "0.9 0.7",
})


-- Pavucontrol
hl.window_rule({
    name = "pavucontrol",
    match = {
        class = "pavucontrol",
    },
    float = true,
})


-- Eye of GNOME
hl.window_rule({
    name = "eog",
    match = {
        class = "eog",
    },
    float = true,
})


-- Rofi
hl.window_rule({
    name = "rofi",
    match = {
        class = "rofi",
    },
    float = true,
    opacity = "0.9 0.6",
})


-- Force File Roller dialogs to center and prevent them from expanding off-screen
hl.window_rule({
    name = "File Roller Center Fix",
    match = {
        class = "file-roller",
    },
    float = true,
    center = true,
    border_size = 2,
})


-- Force media-downloader dialogs to center and prevent them from expanding off-screen
hl.window_rule({
    name = "Media Downloader Center Fix",
    match = {
        class = "media-downloader",
    },
    float = true,
    center = true,
    border_size = 2,
})


-- Force calculator dialogs to center and prevent them from expanding off-screen
hl.window_rule({
    name = "Qalculate! Center Fix",
    match = {
        class = "qalculate",
    },
    float = true,
    center = true,
    border_size = 2,
})


-- Force Thunar copying file dialogs to center and prevent them from expanding off-screen
hl.window_rule({
    name = "Thunar Copy Dialog Center Fix",
    match = {
        class = "thunar",
        title = "File Operation Progress",
    },
    float = true,
    center = true,
    border_size = 2,
    max_size = "50% 50%",
})


-- Fcitx5 Emoji Picker
hl.window_rule({
    name = "Fcitx5 Emoji Picker",
    match = {
        title = "im-emoji-picker",
    },
    no_focus = true,
})


-- Blueman Manager
hl.window_rule({
    name = "Blueman Manager Floating",
    match = {
        class = "blueman-manager",
    },
    float = true,
    border_size = 2,
    size = "400 400",
    move = "1380 60",
})
