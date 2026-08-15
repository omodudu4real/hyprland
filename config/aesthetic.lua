------------------------------------------
------ LOOK AND FEEL ------
------------------------------------------

local colors = require("colors.colors")

-- General
hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 12,

        border_size = 4,

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
        rounding = 10,
        rounding_power = 12,

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
