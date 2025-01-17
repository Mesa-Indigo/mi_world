
-- game / build information
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean' lua54 'yes' game 'gta5'

-- resource information
repository 'https://github.com/Mesa-Indigo/mi_core'
description 'ox_core based script'
author 'Agimir' name 'MI_CORE' version '0.0.1'
license 'LGPL-3.0-or-later'

-- resource dependencies
dependencies {
    'oxmysql',
    'ox_lib',
    'ox_inventory'
}

-- shared files
shared_scripts {
    '@ox_lib/init.lua',
    'source/shared/*.lua',
    'source/util/interface.lua',
    'data/*.lua', 'config.lua',
    'source/init.lua'
}

-- client files
client_scripts {
    'source/client/**/*.lua',
    'source/util/client.lua',
}

-- server files
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'source/server/**/*.lua',
    'source/util/server.lua',
}

-- resource files
files {
    'locales/*.json',

    'stream/**/*.ymap',
    'stream/**/*.ymt',
    'stream/**/*.ybn',
}