
return {

    ------------------------------------------------
    ------------------------------------------------
    --- Recycle Items
    {
        label = 'Scrap',
        sprite = 'fa-solid fa-recycle',
        color = '#69DB7C',
        collect = 'normal',
        amount = { min = 2, max = 5 },
        items = {
            'scrap_iron',
            'scrap_aluminium',
            'scrap_wood',
            'scrap_plastic',
            'scrap_bottle',
            'scrap_wires',
            'scrap_bolts'
        },
        spawn = vec3(-1742.730, -1005.666, 3.892),
        count = 10,
        radius = { sx = 15, sy = 15 },
        model = 'prop_rub_binbag_03',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Farming Items
    {
        label = 'vegetables',
        sprite = 'fa-solid fa-carrot',
        color = '#FF922B',
        collect = 'normal',
        amount = { min = 2, max = 5 },
        items = {
            'ck_potatoes',
            'ck_peppers',
            'ck_onions',
            'ck_lettuce',
            'ck_tomatoes'
        },
        spawn = vec3(2543.971, 4807.154, 33.540),
        count = 15,
        radius = { sx = 30, sy = 8 },
        model = 'prop_veg_crop_04_leaf',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Treasure Items
    {
        label = 'treasure',
        sprite = 'fa-solid fa-box-open',
        color = '#FFEC99',
        collect = 'diving',
        amount = { min = 2, max = 5 },
        items = {
            'trsr_doubloons',
            'trsr_sharkstooth',
            'trsr_sanddollar',
            'trsr_seaglass',
            'trsr_pearls'
        },
        spawn = vec3(-2072.788, -1117.088, -52.883),
        count = 10,
        radius = { sx = 15, sy = 30 },
        model = 'prop_crate_07a',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Chemical Items
    {
        label = 'chemicals',
        sprite = 'fa-solid fa-flask-vial',
        color = '#66D9E8',
        collect = 'normal',
        amount = { min = 2, max = 5 },
        items = {
            'chem_sulfur',
            'chem_potnitr',
            'chem_psdnrn',
            'chem_iodine',
            'chem_phsrus',
            'chem_amonia',
            'chem_actone'
        },
        spawn = vec3(-2528.413, 2688.649, 2.910),
        count = 10,
        radius = { sx = 30, sy = 30 },
        model = 'prop_barrel_exp_01a',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Chemical Items
    {
        label = 'materials',
        sprite = 'fa-solid fa-hammer',
        color = '#FFD43B',
        collect = 'mining',
        amount = { min = 2, max = 5 },
        items = {
            'ore_iron',
            'ore_gold',
            'ore_coal',
            'ruby_uncut',
            'sapphire_uncut',
            'emerald_uncut',
            'diamond_uncut'
        },
        spawn = vec3(2946.735, 2790.929, 40.491),
        count = 10,
        radius = { sx = 20, sy = 20 },
        model = 'cs_x_rubsmla',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Cocaine Items
    {
        label = 'cocaleaf',
        sprite = 'fa-solid fa-leaf',
        color = '#D0EBFF',
        collect = 'normal',
        amount = { min = 2, max = 5 },
        items = {
            'wd_cocaine'
        },
        spawn = vec3(-303.636, 3782.524, 67.236),
        count = 10,
        radius = { sx = 20, sy = 20 },
        model = 'prop_plant_01a',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Cannabis Items
    {
        label = 'cannabis',
        sprite = 'fa-solid fa-cannabis',
        color = '#51CF66',
        collect = 'normal',
        amount = { min = 2, max = 5 },
        items = {
            'wd_sativa',
            'wd_indica',
            'wd_hybrid'
        },
        spawn = vec3(1615.775, 1785.103, 105.934),
        count = 10,
        radius = { sx = 20, sy = 20 },
        model = 'prop_weed_01',
        duration = 5000,
        data = { obj = 0, list = {}, set = nil }
    },
}