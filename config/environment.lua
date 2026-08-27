----------------------------------------------------------
------ ENVIRONMENT VARIABLES ------
----------------------------------------------------------

-- See https://wiki.hypr.land/Configuring/Environment-variables/


-- Environments
-- hl.env(
--     "XDG_DATA_DIRS",
--     "$HOME/.local/share:$HOME/.nix-profile/share:/nix/var/nix/profiles/default/share:/usr/local/share:/usr/share"
-- )


-- Environments used because of Caelestia and hyprland
hl.env(
    "XDG_DATA_DIRS",
    "$HOME/.local/share:$HOME/.nix-profile/share:/nix/var/nix/profiles/default/share:/usr/local/share:/usr/share"
)

hl.env(
    "PATH",
    "$HOME/.local/bin:$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/usr/local/bin:/usr/bin:/bin"
)


-- Force the cursor theme and size
hl.env("XCURSOR_THEME", "Moga-Neon-Cyan")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Moga-Neon-Cyan")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("QT_QUICK_CONTROLS_STYLE", "org.hyprland.style")


-- Toolkit backend
-- GTK: Use Wayland if available; if not, try X11 and then any other GDK backend.
hl.env("GDK_BACKEND", "wayland,x11,*")

-- Qt: Use Wayland if available, fall back to X11 if not.
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Run SDL2 applications on Wayland.
-- Remove or set to x11 if games that provide older versions of SDL
-- cause compatibility issues.
hl.env("SDL_VIDEODRIVER", "wayland")

-- Clutter package already has Wayland enabled.
-- This variable forces Clutter applications to try the Wayland backend.
hl.env("CLUTTER_BACKEND", "wayland")


-- XDG
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")



-- Qt variables

-- Enables automatic scaling based on the monitor's pixel density
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Disables window decorations on Qt applications
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- Tells Qt-based applications to pick your theme from qt5ct.
-- Use with Kvantum.
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
