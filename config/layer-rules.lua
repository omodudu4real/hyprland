----------------------------------------------------------
------ LAYER RULES ------
----------------------------------------------------------

-- Blur -----------------------------------------------------

-- Wlogout
hl.layer_rule({
    match = {
        namespace = "logout_dialog",
    },
    blur = true,
})

-- Rofi
hl.layer_rule({
    match = {
        namespace = "rofi",
    },
    blur = true,
})
