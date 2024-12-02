return {

    --[[ relations guide
        0 = Companion
        1 = Respect
        2 = Like
        3 = Neutral
        4 = Dislike
        5 = Hate
    ]]

    ------------------------------------------------
    ------------------------------------------------
    --- Ballas

    ['ballas'] = {
        group = 'AMBIENT_GANG_BALLAS',
        models = {
            'g_m_y_ballaeast_01',
            'g_m_y_ballaorig_01',
            'g_m_y_ballasout_01',
            'g_f_y_ballas_01',
        },
        relations = {
            ['families'] = 4,
            ['vagos'] = 4,
        }
    },

    ['families'] = {
        group = 'AMBIENT_GANG_FAMILY',
        models = {
            'g_m_y_famca_01',
            'g_m_y_famdnf_01',
            'g_m_y_famfor_01',
            'g_f_y_families_01',
        },
        relations = {
            ['ballas'] = 4,
            ['vagos'] = 4,
        }
    },

    ['vagos'] = {
        group = 'AMBIENT_GANG_MEXICAN',
        models = {
            'g_m_y_mexgoon_01',
            'g_m_y_mexgoon_02',
            'g_m_y_mexgoon_03',
            'g_f_y_vagos_01',
        },
        relations = {
            ['families'] = 4,
            ['ballas'] = 4,
        }
    },

}