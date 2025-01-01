# effects
particle minecraft:campfire_cosy_smoke ~ ~1 ~ .4 .6 .4 0 30
playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.hurt hostile @s ~ ~ ~ 1 .7

# spawn replace
summon minecraft:illusioner ~ ~ ~ {Tags:["fkbm.touched","fkbm.illusioner.chance"]}
execute as @e[type=minecraft:illusioner,distance=..1,limit=1,sort=nearest] at @s run function fkbm:systems/mobs/touch/over/illusioner

# kill init mob
tag @e[type=#fkbm:illusioner_replace,distance=..32] add fkbm.touched
tp ~ -200 ~
