
Data.Vend = {
    ----------------------------------------------------------------
    ----------------------------------------------------------------
    -- recycling vendor
    recycle = {
        -- blip active / sprite / color / scale
        blip = true, sprite = 5, color = 1, scale = 0.6,
        -- menu details
        label = 'Recycling', icon = 'recycle',
        -- location of vendor
        spawn = vec4(-319.000, -1546.691, 27.774, 338.543),
        -- model of vendor / animaiton
        model = 's_m_m_dockwork_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        -- items to be sold
        items = {
            ['scrap_iron'] =        { label = 'Iron Scraps',        value = 2 },
            ['scrap_aluminium'] =   { label = 'Aluminium Scraps',   value = 2 },
            ['scrap_wood'] =        { label = 'Wood Planks',        value = 2 },
            ['scrap_plastic'] =     { label = 'Plastic Scraps',     value = 2 },
            ['scrap_bottle'] =      { label = 'Glass Bottle',       value = 2 },
            ['scrap_wires'] =       { label = 'Torn Wires',         value = 2 },
            ['scrap_bolts'] =       { label = 'Bolts & Fittings',   value = 2 },
        },
    }
}