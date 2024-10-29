fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Gojan'
description 'Elevator script using ox_lib, and ESX'
version '1.0.0'

shared_script {
    'shared/*.lua',
    '@ox_lib/init.lua'
}

client_script {
    'client/*.lua'
}

server_script {
    'server/*.lua'
}

dependencies {
    'ox_lib',
    'es_extended'
}

files {
    'locales/*.json'
}