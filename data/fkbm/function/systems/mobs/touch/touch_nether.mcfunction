# set difficulty
function fkbm:systems/difficulty/set_individual
function fkbm:systems/nightmare/set_individual

# mobs
execute as @e[type=minecraft:enderman,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/end/enderman
execute as @e[type=minecraft:hoglin,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/hoglin
execute as @e[type=minecraft:piglin,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/piglin
execute as @e[type=minecraft:piglin_brute,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/piglin_brute
execute as @e[type=minecraft:skeleton,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/skeleton
execute as @e[type=minecraft:wither_skeleton,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/wither_skeleton
execute as @e[type=minecraft:zombified_piglin,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..128] run function fkbm:systems/mobs/touch/nether/zombified_piglin
