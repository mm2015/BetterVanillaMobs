# set difficulty
function fkbm:systems/difficulty/set_individual

# mobs
execute as @e[type=minecraft:cave_spider,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/cave_spider
execute as @e[type=minecraft:creeper,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/creeper
execute as @e[type=minecraft:drowned,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=5,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/drowned
execute as @e[type=minecraft:enderman,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/end/enderman
execute as @e[type=minecraft:evoker,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/evoker
execute as @e[type=minecraft:hoglin,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/nether/hoglin
execute as @e[type=minecraft:husk,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=5,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/husk
execute as @e[type=minecraft:illusioner,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/illusioner
execute as @e[type=minecraft:pillager,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/pillager
execute as @e[type=minecraft:polar_bear,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/polar_bear
execute as @e[type=minecraft:skeleton,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/skeleton
execute as @e[type=minecraft:slime,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/slime
execute as @e[type=minecraft:spider,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/spider
execute as @e[type=minecraft:stray,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/stray
execute as @e[type=minecraft:vex,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/vex
execute as @e[type=minecraft:vindicator,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/vindicator
execute as @e[type=minecraft:witch,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..16,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/witch
execute as @e[type=minecraft:wolf,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..12,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/wolf
execute as @e[type=minecraft:zombie,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=5,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/zombie
execute as @e[type=minecraft:zombie_villager,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..24,limit=3,sort=nearest] at @s run function fkbm:systems/mobs/loop/over/zombie
