
-- fields
Data.Fields = {
    {
        -- locaiton
        spawn = vector3(2006.815, 502.951, 164.579),
        -- amount of props to load
        count = 10,
        -- size of field
        size = 15,
        -- label of object / sprite
        label = 'Cannabis', sprite = 'fa-solid fa-cannabis',
        -- sprite color
        spcolor = '#27AE60',
        -- item to give
        item = { 'wd_sativa', 'wd_indica', 'wd_hybrid'},
        -- locale to use for object
        locale = 'cannabis',
        -- min / max amount to give
        amount = { min = 1, max = 5 },
        -- model of object / time to collect
        model = 'prop_weed_01', duration = 5000,
        -- general data for list
        data = { obj = 0, list = {}, set = nil }
    },
}