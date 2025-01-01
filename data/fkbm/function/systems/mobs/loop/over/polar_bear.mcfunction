# angry
execute as @s[tag=fkbm.polar_bear.angry] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..24] run data merge entity @s {AngerTime:100}
execute as @s[tag=fkbm.polar_bear.angry] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run data modify entity @s AngryAt set from entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] UUID

tag @s add fkbm.looped
