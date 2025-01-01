# red eyes distance=..12
data merge entity @s {AngerTime:100}

# canceler
execute unless entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run return fail

# angry
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run data modify entity @s AngryAt set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run data modify entity @s AngryAt set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run data modify entity @s AngryAt set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
