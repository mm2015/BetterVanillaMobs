# set difficulty
function fkbm:systems/difficulty/set_individual

# mobs
execute as @e[type=minecraft:enderman,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/enderman
execute as @e[type=minecraft:hoglin,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/hoglin
execute as @e[type=minecraft:piglin,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/piglin
execute as @e[type=minecraft:piglin_brute,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/piglin_brute
execute as @e[type=minecraft:skeleton,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/skeleton
execute as @e[type=minecraft:wither_skeleton,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/wither_skeleton
execute as @e[type=minecraft:zombified_piglin,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..32,limit=6,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/zombified_piglin
