# make the pack ignore my mobs
execute as @e[type=#fkbm:touch_type_safemode,tag=fkbm.touched] if predicate fkbmtool:rng/50 run tag @s add global.ignore
