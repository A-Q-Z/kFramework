
fx_version 'cerulean'
game 'gta5'

author 'AQZ'
description 'kFramework - Optimized FiveM Framework'
version '1.0.0'

-- Import essential resources
shared_script '@es_extended/imports.lua' -- Optional: use if needed for compatibility with ESX

-- Core scripts
server_scripts {
    'resources/[core]/essential/server.lua',
    'resources/[core]/database/db.lua',
    'resources/[core]/player/player.lua'
}

client_scripts {
    'resources/[core]/essential/client.lua'
}

-- Module scripts
server_scripts {
    'resources/[modules]/*/*.lua'
}

client_scripts {
    'resources/[modules]/*/*.lua'
}

-- User interface
ui_page 'resources/[ui]/nui/html/index.html'

files {
    'resources/[ui]/nui/html/index.html',
    'resources/[ui]/nui/js/*.js',
    'resources/[ui]/nui/css/*.css'
}

-- Configuration
shared_script 'config/config.lua'
