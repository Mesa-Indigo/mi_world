-- types of collection animations - 'normal', 'mine'


-- fields
Data.Fields = {

    {
        -- locaiton
        spawn = vector3(2006.815, 502.951, 164.579),
        -- amount of props to load
        count = 10,
        -- size of field
        size = 15,
        -- label of object
        label = locale('cannabis'),
        -- target sprite
        sprite = 'fa-solid fa-cannabis',
        -- sprite color
        spcolor = '#51CF66',
        -- item to give
        item = {
            'wd_sativa',
            'wd_indica',
            'wd_hybrid'
        },
        -- type of animation
        type = 'normal',
        -- locale to use for object
        locale = 'cannabis',
        -- min / max amount to give
        amount = { min = 1, max = 5 },
        -- model of object / time to collect
        model = 'prop_weed_01', duration = 5000,
        -- general data for list
        data = { obj = 0, list = {}, set = nil }
    },

    {
        -- locaiton
        spawn = vector3(2948.836, 2792.301, 40.701),
        -- amount of props to load
        count = 10,
        -- size of field
        size = 20,
        -- label of object
        label = locale('materials'),
        -- target sprite
        sprite = 'fa-solid fa-hammer',
        -- sprite color
        spcolor = '#FFD43B',
        -- item to give
        item = {
            'ore_iron',
            'ore_gold',
            'ore_coal',
            'ruby_uncut',
            'sapphire_uncut',
            'emerald_uncut',
            'diamond_uncut'
        },
        -- type of animation
        type = 'mining',
        -- locale to use for object
        locale = 'materials',
        -- min / max amount to give
        amount = { min = 1, max = 5 },
        -- model of object / time to collect
        model = 'csx_rvrbldr_smle_', duration = 5000,
        -- general data for list
        data = { obj = 0, list = {}, set = nil }
    },
}