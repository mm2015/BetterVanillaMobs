# check
execute store result score #tmp1 fkbm.var run data get entity @s Owner[0]
execute store result score #tmp2 fkbm.var run data get entity @e[type=minecraft:skeleton,distance=..3,sort=nearest,limit=1] UUID[0]
execute store success score #tmp3 fkbm.var run execute if score #tmp1 fkbm.var = #tmp2 fkbm.var

# block arrow
execute if score #tmp3 fkbm.var matches 0 run data merge entity @s {Tags:["fkbm.skeleton.blocked"],Motion:[0d,0d,0d],damage:0d}

# fx
execute if score #tmp3 fkbm.var matches 0 run particle minecraft:wax_off ~ ~ ~ .1 .1 .1 0 3
execute if score #tmp3 fkbm.var matches 0 run playsound minecraft:block.bell.use hostile @a[distance=..32] ~ ~ ~ .1 2
execute if score #tmp3 fkbm.var matches 0 run playsound minecraft:entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ .2 2

execute if score #tmp3 fkbm.var matches 0 run scoreboard players operation @s fkbm.cd1 = #1 fktool
