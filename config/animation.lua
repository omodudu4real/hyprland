------------------------------------------
------ ANIMATIONS ------
------------------------------------------

-- https://wiki.hypr.land/Configuring/Variables/--animations

hl.config({
    animations = {
        enabled = true,

        -- Default curves, see https://wiki.hypr.land/Configuring/Animations/--curves
        --        NAME,           X0,   Y0,   X1,   Y1
        bezier = {
            {
                name = "easeOutQuint",
                x0 = 0.23,
                y0 = 1,
                x1 = 0.32,
                y1 = 1,
            },
            {
                name = "easeInOutCubic",
                x0 = 0.65,
                y0 = 0.05,
                x1 = 0.36,
                y1 = 1,
            },
            {
                name = "linear",
                x0 = 0,
                y0 = 0,
                x1 = 1,
                y1 = 1,
            },
            {
                name = "almostLinear",
                x0 = 0.5,
                y0 = 0.5,
                x1 = 0.75,
                y1 = 1,
            },
            {
                name = "quick",
                x0 = 0.15,
                y0 = 0,
                x1 = 0.1,
                y1 = 1,
            },
        },

        -- Default animations, see https://wiki.hypr.land/Configuring/Animations/
        --           NAME,          ONOFF, SPEED, CURVE,        [STYLE]
        animation = {
            {
                name = "global",
                onoff = 1,
                speed = 10,
                curve = "default",
            },

            {
                name = "border",
                onoff = 1,
                speed = 5.39,
                curve = "easeOutQuint",
            },

            {
                name = "windows",
                onoff = 1,
                speed = 4.79,
                curve = "easeOutQuint",
                style = "slide",
            },

            {
                name = "windowsIn",
                onoff = 1,
                speed = 4.1,
                curve = "easeOutQuint",
                style = "slide 80%",
            },

            {
                name = "windowsOut",
                onoff = 1,
                speed = 1.49,
                curve = "linear",
                style = "slide 80%",
            },

            {
                name = "fadeIn",
                onoff = 1,
                speed = 1.73,
                curve = "almostLinear",
            },

            {
                name = "fadeOut",
                onoff = 1,
                speed = 1.46,
                curve = "almostLinear",
            },

            {
                name = "fade",
                onoff = 1,
                speed = 3.03,
                curve = "quick",
            },

            {
                name = "layers",
                onoff = 1,
                speed = 3.81,
                curve = "easeOutQuint",
                style = "popin",
            },

            {
                name = "layersIn",
                onoff = 1,
                speed = 4,
                curve = "easeOutQuint",
                style = "popin 90%",
            },

            {
                name = "layersOut",
                onoff = 1,
                speed = 1.5,
                curve = "linear",
                style = "popin 90%",
            },

            {
                name = "fadeLayersIn",
                onoff = 1,
                speed = 1.79,
                curve = "almostLinear",
            },

            {
                name = "fadeLayersOut",
                onoff = 1,
                speed = 1.39,
                curve = "almostLinear",
            },

            {
                name = "workspaces",
                onoff = 1,
                speed = 1.94,
                curve = "almostLinear",
                style = "fade",
            },

            {
                name = "workspacesIn",
                onoff = 1,
                speed = 1.21,
                curve = "almostLinear",
                style = "fade",
            },

            {
                name = "workspacesOut",
                onoff = 1,
                speed = 1.94,
                curve = "almostLinear",
                style = "fade",
            },

            {
                name = "zoomFactor",
                onoff = 1,
                speed = 7,
                curve = "quick",
            },
        },
    },
})


------------------------------------------------------------
------ SMART GAPS / NO GAPS WHEN ONLY ------
------------------------------------------------------------

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- Uncomment all if you wish to use that.

-- workspace = w[tv1], gapsout:0, gapsin:0
-- workspace = f[1], gapsout:0, gapsin:0

-- windowrule {
--     name = no-gaps-wtv1
--     match:float = false
--     match:workspace = w[tv1]
--
--     border_size = 0
--     rounding = 0
-- }

-- windowrule {
--     name = no-gaps-f1
--     match:float = false
--     match:workspace = f[1]
--
--     border_size = 0
--     rounding = 0
-- }
