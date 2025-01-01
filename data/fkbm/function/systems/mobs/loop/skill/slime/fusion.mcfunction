# checks
tag @s add fkbm.slime.fusion.main
execute as @e[type=minecraft:slime,distance=..4] store result score @s fkbm.var run data get entity @s Size 1
execute store result score #SlimeSizeTemp fkbm.options run scoreboard players get @s fkbm.var
scoreboard players set #SlimeCount fkbm.options 0
execute as @e[type=minecraft:slime,tag=!fkbm.slime.fusion.dead,distance=..6] if score @s fkbm.var = #SlimeSizeTemp fkbm.options run scoreboard players add #SlimeCount fkbm.options 1

# eat
execute if score #SlimeCount fkbm.options matches 3.. run function fkbm:systems/mobs/loop/skill/slime/fusion_eat

# reset
tag @s remove fkbm.slime.fusion.main
