advancement revoke @s only fkbm:mobs/piglin_brute_berserk
function fkbm:systems/difficulty/set_individual

execute if predicate fkbmtool:rng/30 as @e[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.berserk,scores={fkbm.var=..0},distance=..8,limit=1,sort=nearest] at @s run function fkbm:systems/mobs/loop/skill/piglin_brute/berserk
