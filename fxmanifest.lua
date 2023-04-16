version "1.0.0"
title "Brown's GoodEats"
description "Script that allows you to make new super food items"
author "Brown Development (brown#8514)"

fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_scripts {
    'config.lua'
}

server_scripts {
    'server/server.lua'
}

client_scripts {
    'client/client.lua'
}

escrow_ignore {
    'config.lua'
}
