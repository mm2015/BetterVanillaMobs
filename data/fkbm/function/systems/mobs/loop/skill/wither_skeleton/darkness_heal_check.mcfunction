# count touched players
scoreboard players set @s fkbm.var 0
execute as @a[distance=..16,gamemode=!creative,gamemode=!spectator,predicate=fkbm:mobs/wither_skeleton/darkness_touch] run scoreboard players add @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread,distance=..16] fkbm.var 1

# heal
execute if score @s fkbm.var matches 1.. run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_heal
scoreboard players reset @s fkbm.var
