advancement revoke @s only fkbm:mobs/vindicator_stun
function fkbm:systems/difficulty/set_individual

# fx
execute as @e[type=minecraft:vindicator,tag=fkbm.vindicator.worker,distance=..8,limit=1] at @s run playsound minecraft:entity.vindicator.ambient hostile @a[distance=..8] ~ ~ ~ 1 .8 .2
particle minecraft:wax_off ~ ~1.6 ~ .3 .2 .3 0 10

# effect
tp @s ~ ~ ~ ~10 ~0
effect give @s minecraft:blindness 1 0 true
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 1 1 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 1 2 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 1 3 true
