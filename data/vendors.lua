
return {

    ------------------------------------------------
    ------------------------------------------------
    --- Farming Vendors
    {
        blip = true, sprite = 473, color = 24, scale = 0.6, name = 'Farmer\'s Market',
        label = 'Farmer\'s Market', icon = 'farm',
        spawn = vec4(1676.142, 4883.424, 42.060, 59.78),
        model = 's_m_m_cntrybar_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        items = {
            ['ck_potatoes'] =       { label = 'Potatoes',   value = 7 },
            ['ck_peppers'] =        { label = 'Peppers',    value = 9 },
            ['ck_onions'] =         { label = 'Onions',     value = 5 },
            ['ck_lettuce'] =        { label = 'Lettuce',    value = 7 },
            ['ck_tomatoes'] =       { label = 'Tomatoes',   value = 5 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Recycle Vendors
    {
        blip = true, sprite = 728, color = 43, scale = 0.6, name = 'Recycle Center',
        label = 'Recycling', icon = 'recycle',
        spawn = vec4(-318.765, -1545.635, 27.811, 339.67),
        model = 'a_m_m_hillbilly_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        items = {
            ['scrap_iron'] =        { label = 'Iron Scraps',        value = 3 },
            ['scrap_aluminium'] =   { label = 'Aluminium Scraps',   value = 4 },
            ['scrap_wood'] =        { label = 'Wood Planks',        value = 3 },
            ['scrap_plastic'] =     { label = 'Plastic Scraps',     value = 4 },
            ['scrap_bottle'] =      { label = 'Glass Bottle',       value = 4 },
            ['scrap_wires'] =       { label = 'Torn Wires',         value = 5 },
            ['scrap_bolts'] =       { label = 'Bolts & Fittings',   value = 3 },
        },
    },
    {
        blip = true, sprite = 728, color = 43, scale = 0.6, name = 'Recycle Center',
        label = 'Recycling', icon = 'recycle',
        spawn = vec4(-192.577, 6268.700, 31.489, 40.57),
        model = 'a_m_m_hillbilly_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        items = {
            ['scrap_iron'] =        { label = 'Iron Scraps',        value = 3 },
            ['scrap_aluminium'] =   { label = 'Aluminium Scraps',   value = 4 },
            ['scrap_wood'] =        { label = 'Wood Planks',        value = 3 },
            ['scrap_plastic'] =     { label = 'Plastic Scraps',     value = 4 },
            ['scrap_bottle'] =      { label = 'Glass Bottle',       value = 4 },
            ['scrap_wires'] =       { label = 'Torn Wires',         value = 5 },
            ['scrap_bolts'] =       { label = 'Bolts & Fittings',   value = 3 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Mining Vendors
    {
        blip = true, sprite = 478, color = 47, scale = 0.6, name = 'Steelworks',
        label = 'Materials', icon = 'hammer',
        spawn = vec4(973.536, -1936.760, 32.222, 357.687),
        model = 'a_m_y_vindouche_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        items = {
            ['ore_iron'] =        { label = 'Iron Ore',     value = 27 },
            ['ore_gold'] =        { label = 'Gold Ore',     value = 49 },
            ['ore_coal'] =        { label = 'Coal',         value = 21 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Pawn Vendors
    {
        blip = true, sprite = 617, color = 35, scale = 0.6, name = 'Pawn & Jewelry',
        label = 'Pawn', icon = 'gem',
        spawn = vec4(-1466.440, -395.767, 38.259, 35.962),
        model = 'a_m_y_business_03', scen = 'WORLD_HUMAN_AA_COFFEE',
        items = {
            ['ruby_uncut'] =        { label = 'Uncut Ruby',         value = 31 },
            ['sapphire_uncut'] =    { label = 'Uncut Sapphire',     value = 43 },
            ['emerald_uncut'] =     { label = 'Uncut Emerald',      value = 47 },
            ['diamond_uncut'] =     { label = 'Uncut Diamond',      value = 53 },

            ['trsr_doubloons'] =    { label = 'Gold Doubloons',     value = 53 },
            ['trsr_sharkstooth'] =  { label = 'Sharks Tooth',       value = 21 },
            ['trsr_sanddollar'] =   { label = 'Sand Dollar',        value = 13 },
            ['trsr_seaglass'] =     { label = 'Sea Glass',          value = 11 },
            ['trsr_pearls'] =       { label = 'Pearls',             value = 47 },
        },
    },
    {
        blip = true, sprite = 617, color = 35, scale = 0.6, name = 'Pawn & Jewelry',
        label = 'Pawn', icon = 'gem',
        spawn = vec4(-308.739, 6196.721, 31.493, 314.444),
        model = 'a_m_y_business_03', scen = 'WORLD_HUMAN_AA_COFFEE',
        items = {
            ['ruby_uncut'] =        { label = 'Uncut Ruby',         value = 31 },
            ['sapphire_uncut'] =    { label = 'Uncut Sapphire',     value = 43 },
            ['emerald_uncut'] =     { label = 'Uncut Emerald',      value = 47 },
            ['diamond_uncut'] =     { label = 'Uncut Diamond',      value = 53 },

            ['trsr_doubloons'] =    { label = 'Gold Doubloons',     value = 53 },
            ['trsr_sharkstooth'] =  { label = 'Sharks Tooth',       value = 21 },
            ['trsr_sanddollar'] =   { label = 'Sand Dollar',        value = 13 },
            ['trsr_seaglass'] =     { label = 'Sea Glass',          value = 11 },
            ['trsr_pearls'] =       { label = 'Pearls',             value = 47 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Cannabis Vendors
    {
        blip = true, sprite = 496, color = 25, scale = 0.6, name = 'Smoke on the Water',
        label = 'Cannabis', icon = 'cannabis',
        spawn = vec4(-1168.980, -1573.032, 4.663, 128.387),
        model = 'a_m_y_beach_01', scen = 'WORLD_HUMAN_SMOKING_POT_CLUBHOUSE',
        items = {
            ['pc_sativa'] =         { label = 'Sativa Buds',        value = 35 },
            ['pc_indica'] =         { label = 'Indica Buds',        value = 31 },
            ['pc_hybrid'] =         { label = 'Hybrid Buds',        value = 37 },

            ['bc_sativa'] =         { label = 'Sativa Brick',       value = 69 },
            ['bc_indica'] =         { label = 'Indica Brick',       value = 71 },
            ['bc_hybrid'] =         { label = 'Hybrid Brick',       value = 75 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Hard Drugs Vendors
    {
        blip = true, sprite = 514, color = 18, scale = 0.6, name = 'Altruist Dealer',
        label = 'Hard Drugs', icon = 'drugs',
        spawn = vec4(-1113.306, 4903.672, 218.595, 314.702),
        model = 'a_m_y_acult_02', scen = 'WORLD_HUMAN_SMOKING_POT_CLUBHOUSE',
        items = {
            ['pd_meth'] =         { label = 'Powdered Meth',            value = 131 },
            ['cr_meth'] =         { label = 'Crystal Meth',             value = 153 },
            ['bc_meth'] =         { label = 'Brick of Crystal Meth',    value = 503 },

            ['pc_cocaine'] =      { label = 'Cocaine',                  value = 109 },
            ['bc_cocaine'] =      { label = 'Brick of Cocaine',         value = 419 },
        },
    },

    ------------------------------------------------
    ------------------------------------------------
    --- Chemicals Vendors
    {
        blip = true, sprite = 499, color = 30, scale = 0.6, name = 'Humane Chemicals',
        label = 'Humane Chemicals', icon = 'chemicals',
        spawn = vec4(3566.354, 3703.531, 36.642, 338.177),
        model = 's_m_m_scientist_01', scen = 'WORLD_HUMAN_CLIPBOARD_FACILITY',
        items = {
            ['chem_sulfur'] =           { label = 'Sulfur',             value = 7 },
            ['chem_potnitr'] =          { label = 'Potassium Nitrate',  value = 9 },
            ['chem_psdnrn'] =           { label = 'Psuedoephedrine',    value = 5 },
            ['chem_iodine'] =           { label = 'Iodine',             value = 7 },
            ['chem_phsrus'] =           { label = 'Phosphorus',         value = 5 },
            ['chem_amonia'] =           { label = 'Ammonia',            value = 7 },
            ['chem_actone'] =           { label = 'Acetone',            value = 9 },
        },
    },
}