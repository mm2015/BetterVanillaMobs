execute as @e[type=minecraft:witch,tag=fkbm.with.zonya.effect] at @s run function fkbm:systems/mobs/loop/skill/witch/zonya_performed

execute if entity @e[type=minecraft:witch,tag=fkbm.with.zonya.effect,limit=1] run schedule function fkbm:systems/mobs/loop/skill/witch/zonya_1t 2t