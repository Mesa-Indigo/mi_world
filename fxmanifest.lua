--[[    cfx.re information    ]]--
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean'
lua54 'yes' game 'gta5'

--[[    resource information    ]]--
name 'mi_world'
author 'Agimir'
version '1.0.0'
repository 'https://github.com/Mesa-Indigo/mi_world'
description 'activities & interactions around the world of FiveM'

--[[    dependancies    ]]--
dependencies { 
    '/server:7290',
    'ox_lib', 'ox_target', 'ox_inventory'
}

--[[    manifest information    ]]--
shared_scripts {
    -- overextended dependancies
    '@ox_lib/init.lua',

    -- core resources
    'shared/*.lua',
    'data/*.lua',
    'utils/interface.lua'
}

client_scripts {
    -- core resources
    'client/**/*.lua',
    'utils/client.lua'
}

server_scripts {
    -- overextended dependancies
    '@oxmysql/lib/MySQL.lua',

    -- core resources
    'server/**/*.lua',
    'utils/server.lua'
}

files {
    -- locale files
    'locales/*.json',

    -- ymap files
    'stream/**/*.ymap',
    'stream/**/*.ymt',
    'stream/**/*.ybn',

    -- 'stream/**/*.ytyp',
    -- 'stream/**/*.ymf',
    -- 'stream/**/*.ydr',
    -- 'stream/**/*.ycd',
    -- 'stream/**/*.ytd',
    -- 'stream/**/*.yft',
}
