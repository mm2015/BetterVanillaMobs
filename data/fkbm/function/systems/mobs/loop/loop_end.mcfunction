# set difficulty
function fkbm:systems/difficulty/set_individual

# mobs
execute as @e[type=minecraft:enderman,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=10,sort=nearest] at @s run function fkbm:systems/mobs/loop/end/enderman
