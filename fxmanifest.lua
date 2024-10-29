fx_version 'cerulean'
game 'gta5'

author 'TvojeJméno'
description 'Elevator script using ox_lib, ox_target, and ESX'
version '1.0.0'

shared_script '@ox_lib/init.lua'
shared_script 'sh_config.lua'
client_script 'client/cl_main.lua'
server_script 'server/sv_main.lua'

dependencies {
    'ox_lib',
    'ox_target',
    'es_extended'
}

lua54 'yes'