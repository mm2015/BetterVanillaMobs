# anim
execute if score @s fkbm.var matches 0..2 run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.2 ~ .2 .2 .2 0 20
execute if score @s fkbm.var matches 3..6 run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.5 ~ .4 .4 .4 0 30
playsound minecraft:item.honey_bottle.drink hostile @a[distance=..16] ~ ~ ~ 3 .7

# fusion
execute as @e[type=minecraft:slime,distance=.01..4,sort=nearest] if score @s fkbm.var = #SlimeSizeTemp fkbm.options run tag @s add fkbm.slime.fusion.dead.init
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead.init,limit=2] run tag @s add fkbm.slime.fusion.dead
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead.init] run tag @s remove fkbm.slime.fusion.dead.init
execute if score @s fkbm.var matches 0..2 at @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.2 ~ .2 .2 .2 0 5
execute if score @s fkbm.var matches 3..6 at @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.5 ~ .4 .4 .4 0 1
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run tp @s @e[type=minecraft:slime,tag=fkbm.slime.fusion.main,distance=..6,limit=1,sort=nearest]

# size
scoreboard players operation #SlimeSizeTemp fkbm.options *= #2 fktool
scoreboard players operation #SlimeSizeTemp fkbm.options += #1 fktool
execute store result storage fkbm:mobs/slime size int 1 run scoreboard players get #SlimeSizeTemp fkbm.options
data modify entity @s Size set from storage fkbm:mobs/slime size
function fkbm:systems/mobs/touch/over/slime

# cd
scoreboard players operation @e[type=minecraft:slime,distance=..2,limit=3,sort=nearest] fkbm.cd1 = #10 fktool

# kill
schedule function fkbm:systems/mobs/loop/skill/slime/fusion_kill 2t
