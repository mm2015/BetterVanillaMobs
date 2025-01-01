# effects
particle minecraft:angry_villager ~ ~1 ~ .4 .6 .4 0 5
playsound minecraft:entity.piglin_brute.angry hostile @s ~ ~ ~ 3 1

# spawn replace
execute summon minecraft:piglin_brute run function fkbm:systems/mobs/touch/over/piglin_brute

# kill init mob
tp ~ -200 ~
