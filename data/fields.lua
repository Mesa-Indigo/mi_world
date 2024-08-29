-- types of collection animations - 'normal', 'mine'


-- fields
Data.Fields = {

    -- cannabis fields
    {
        -- location of farm area
        spawn = vector3(2006.815, 502.951, 164.179),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cannabis',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-cannabis', spcolor = '#51CF66',
        -- items to give on progbar completion
        item = {
            'wd_sativa', 'wd_indica', 'wd_hybrid'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_weed_01', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(-75.801, 2535.433, 106.468),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cannabis',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-cannabis', spcolor = '#51CF66',
        -- items to give on progbar completion
        item = {
            'wd_sativa', 'wd_indica', 'wd_hybrid'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_weed_01', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(1693.150, 1964.251, 96.778),
        -- prop count / spawn size / label from locale
        count = 10, size = 20, label = 'cannabis',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-cannabis', spcolor = '#51CF66',
        -- items to give on progbar completion
        item = {
            'wd_sativa', 'wd_indica', 'wd_hybrid'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_weed_01', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    -- coca fields
    {
        -- location of farm area
        spawn = vector3(-314.536, 3794.635, 67.737),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cocaleaf',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-leaf', spcolor = '#D0EBFF',
        -- items to give on progbar completion
        item = {
            'wd_cocaine'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'bzzz_plant_coca_b', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(-634.958, 1459.560, 308.487),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cocaleaf',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-leaf', spcolor = '#D0EBFF',
        -- items to give on progbar completion
        item = {
            'wd_cocaine'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'bzzz_plant_coca_b', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(3705.658, 3090.263, 11.341),
        -- prop count / spawn size / label from locale
        count = 10, size = 15, label = 'cocaleaf',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-leaf', spcolor = '#D0EBFF',
        -- items to give on progbar completion
        item = {
            'wd_cocaine'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'bzzz_plant_coca_b', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    -- mining fields
    {
        -- location of farm area
        spawn = vector3(2948.836, 2792.301, 40.401),
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
        type = 'mining', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'csx_rvrbldr_smle_', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(-628.388, 2913.679, 15.161),
        -- prop count / spawn size / label from locale
        count = 5, size = 15, label = 'materials',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-hammer', spcolor = '#FFD43B',
        -- items to give on progbar completion
        item = {
            'ore_iron', 'ore_gold', 'ore_coal',
            'ruby_uncut', 'sapphire_uncut', 'emerald_uncut',
            'diamond_uncut'
        },
        -- type for animation / min & max amount to give
        type = 'mining', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'csx_rvrbldr_smle_', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    -- chemical fields
    {
        -- location of farm area
        spawn = vector3(-2479.979, 2698.833, 2.276),
        -- prop count / spawn size / label from locale
        count = 15, size = 35, label = 'chemicals',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-flask-vial', spcolor = '#66D9E8',
        -- items to give on progbar completion
        item = {
            'chem_sulfur', 'chem_potnitr', 'chem_psdnrn',
            'chem_iodine', 'chem_phsrus', 'chem_amonia',
            'chem_actone'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'xm3_prop_xm3_barrel_01a', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(3729.611, 3809.026, 4.932),
        -- prop count / spawn size / label from locale
        count = 15, size = 35, label = 'chemicals',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-flask-vial', spcolor = '#66D9E8',
        -- items to give on progbar completion
        item = {
            'chem_sulfur', 'chem_potnitr', 'chem_psdnrn',
            'chem_iodine', 'chem_phsrus', 'chem_amonia',
            'chem_actone'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'xm3_prop_xm3_barrel_01a', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },

    -- farming fields
    {
        -- location of farm area
        spawn = vector3(2487.158, 4855.510, 35.590),
        -- prop count / spawn size / label from locale
        count = 15, size = 15, label = 'vegetables',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-carrot', spcolor = '#8CE99A',
        -- items to give on progbar completion
        item = {
            'ck_potatoes', 'ck_peppers', 'ck_onions',
            'ck_lettuce', 'ck_tomatoes'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_veg_crop_04_leaf', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(2540.701, 4811.723, 33.740),
        -- prop count / spawn size / label from locale
        count = 20, size = 20, label = 'vegetables',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-carrot', spcolor = '#8CE99A',
        -- items to give on progbar completion
        item = {
            'ck_potatoes', 'ck_peppers', 'ck_onions',
            'ck_lettuce', 'ck_tomatoes'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_veg_crop_04_leaf', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(2528.649, 4362.448, 38.795),
        -- prop count / spawn size / label from locale
        count = 20, size = 20, label = 'vegetables',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-carrot', spcolor = '#8CE99A',
        -- items to give on progbar completion
        item = {
            'ck_potatoes', 'ck_peppers', 'ck_onions',
            'ck_lettuce', 'ck_tomatoes'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_veg_crop_04_leaf', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
    {
        -- location of farm area
        spawn = vector3(251.634, 6459.574, 30.405),
        -- prop count / spawn size / label from locale
        count = 20, size = 20, label = 'vegetables',
        -- target sprite / sprite color
        sprite = 'fa-solid fa-carrot', spcolor = '#8CE99A',
        -- items to give on progbar completion
        item = {
            'ck_potatoes', 'ck_peppers', 'ck_onions',
            'ck_lettuce', 'ck_tomatoes'
        },
        -- type for animation / min & max amount to give
        type = 'normal', amount = { min = 1, max = 5 },
        -- model to spawn / duration of progbar
        model = 'prop_veg_crop_04_leaf', duration = 5000,
        -- general data for list -! [do not touch] !-
        data = { obj = 0, list = {}, set = nil }
    },
}