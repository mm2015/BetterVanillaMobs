# set difficulty
function fkbm:systems/difficulty/set_individual
function fkbm:systems/nightmare/set_individual

# mobs
execute as @e[type=minecraft:enderman,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/end/enderman
