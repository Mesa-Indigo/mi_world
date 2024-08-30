-- types of collection animations - 'normal', 'mine'


-- fields
Data.Fields = {
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- cannabis fields
    {
        -- location of farm area
        spawn = vector3(1985.652, 502.773, 162.666),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cannabis',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-cannabis', spcolor = '#51CF66',
        -- items to give on progbar completion
        item = {
            'wd_sativa', 'wd_indica', 'wd_hybrid'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_weed_01', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- coca fields
    {
        -- location of farm area
        spawn = vector3(-313.676, 3788.287, 68.120),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cocaleaf',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-leaf', spcolor = '#D0EBFF',
        -- items to give on progbar completion
        item = {
            'wd_cocaine'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'bzzz_plant_coca_b', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- mining fields
    {
        -- location of farm area
        spawn = vector3(2946.532, 2792.622, 40.565),
        -- prop count / spawn size / label from locale
        count = 15, size = 25, label = 'materials',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-hammer', spcolor = '#FFD43B',
        -- items to give on progbar completion
        item = {
            'ore_iron', 'ore_gold', 'ore_coal',
            'ruby_uncut', 'sapphire_uncut', 'emerald_uncut',
            'diamond_uncut'
        },
        -- type for animation / min & max amount to give
        type = 'mining', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'csx_rvrbldr_smle_', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- chemical fields
    {
        -- location of farm area
        spawn = vector3(-2324.816, 2396.272, 3.047),
        -- prop count / spawn size / label from locale
        count = 10, size = 20, label = 'chemicals',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-flask-vial', spcolor = '#66D9E8',
        -- items to give on progbar completion
        item = {
            'chem_sulfur', 'chem_potnitr', 'chem_psdnrn',
            'chem_iodine', 'chem_phsrus', 'chem_amonia',
            'chem_actone'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'xm3_prop_xm3_barrel_01a', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- treasure fields
    {
        -- location of farm area
        spawn = vector3(-2080.872, -1102.765, -52.202),
        -- prop count / spawn size / label from locale
        count = 5, size = 20, label = 'treasure',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-box-open', spcolor = '#FFEC99',
        -- items to give on progbar completion
        item = {
            'trsr_doubloons', 'trsr_sharkstooth', 'trsr_sanddollar',
            'trsr_seaglass', 'trsr_pearls'
        },
        -- type for animation / min & max amount to give
        type = 'diving', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'xm_prop_x17_chest_closed', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- recycling fields
    {
        -- location of farm area
        spawn = vector3(-1742.730, -1005.666, 3.892),
        -- prop count / spawn size / label from locale
        count = 10, size = 20, label = 'recycling',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-recycle', spcolor = '#69DB7C',
        -- items to give on progbar completion
        item = {
            'scrap_iron', 'scrap_aluminium', 'scrap_wood',
            'scrap_plastic', 'scrap_bottle', 'scrap_wires',
            'scrap_bolts'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 2, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_rub_binbag_05', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- farming fields
    {
        -- location of farm area
        spawn = vector3(2537.595, 4812.296, 33.806),
        -- prop count / spawn size / label from locale
        count = 15, size = 20, label = 'vegetables',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-carrot', spcolor = '#FF922B',
        -- items to give on progbar completion
        item = {
            'ck_potatoes', 'ck_peppers', 'ck_onions',
            'ck_lettuce', 'ck_tomatoes'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 3, max = 6 },
        -- model to spawn / duration of progbar
        model = 'prop_veg_crop_04_leaf', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

}