# summon
function fkbmtool:rng/get
execute if score Random fktool matches 05..95 run summon minecraft:cave_spider ~ ~.2 ~ {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute if score Random fktool matches 45..55 run summon minecraft:cave_spider ~-1 ~.2 ~ {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute if score Random fktool matches 49..51 run summon minecraft:cave_spider ~ ~.2 ~1 {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute as @e[type=minecraft:cave_spider,tag=fkbm.spider.baby.init,distance=..1] run function fkbm:systems/mobs/touch/over/cave_spider
tag @e[type=minecraft:cave_spider,tag=fkbm.spider.baby.init,distance=..5] remove fkbm.spider.baby.init

# fx
particle minecraft:block{block_state:"minecraft:white_wool"} ~ ~1 ~ .5 .5 .5 .1 20
playsound minecraft:entity.spider.step hostile @a[distance=..16] ^ ^ ^2 1 .5 .5

# cd
tag @s add fkbm.spider.summoned
scoreboard players operation @s fkbm.cd1 = #20 fktool
