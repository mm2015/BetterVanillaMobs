execute as @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread] at @s store success score @s fkbm.var run execute if entity @e[type=minecraft:area_effect_cloud,tag=fkbm.wither_skeleton.darkness,distance=..3]
execute as @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread] if score @s fkbm.var matches 1 at @s run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_heal_check
execute as @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread] if score @s fkbm.var matches 0 at @s run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_stop
scoreboard players reset @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness] fkbm.var

execute if entity @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread,limit=1] run schedule function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_loop 10t