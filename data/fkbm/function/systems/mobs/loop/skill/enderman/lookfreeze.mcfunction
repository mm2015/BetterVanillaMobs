advancement revoke @s only fkbm:mobs/enderman_lookfreeze
function fkbm:systems/difficulty/set_individual

execute as @e[type=minecraft:enderman,tag=fkbm.enderman.lookfreeze,limit=1,sort=nearest,distance=..64] at @s anchored eyes facing entity @p eyes positioned ^ ^.25 ^.5 run function fkbm:systems/mobs/loop/skill/enderman/lookfreeze_particle

effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:darkness 3 0 true
