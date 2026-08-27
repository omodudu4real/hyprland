------------------------------------------
------ LOOK AND FEEL ------
------------------------------------------

local colors = require("colors.colors")

-- General
hl.config({
    general = {
        gaps_in = 12,
        gaps_out = 6,

        border_size = 3,

        col = {
            active_border = {
                colors = {
                    colors.primary,
                    colors.on_background,
                },
                angle = 45,
            },

            inactive_border = colors.outline_variant,
        },

        resize_on_border = true,
        allow_tearing = false,

        layout = "dwindle",
    },
})


-- Decoration
hl.config({
    decoration = {
        rounding = 12,
        rounding_power = 6,

        active_opacity = 1.0,
        inactive_opacity = 0.9,
        fullscreen_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 32,
            render_power = 2,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,
            xray = true,
            size = 3,
            passes = 5,
            new_optimizations = true,
            ignore_opacity = true,
            vibrancy = 0.1696,
        },
    },
})

-- Cursor
hl.config({
    cursor = {
        enable_hyprcursor = false,
        sync_gsettings_theme = true,
    },
})
