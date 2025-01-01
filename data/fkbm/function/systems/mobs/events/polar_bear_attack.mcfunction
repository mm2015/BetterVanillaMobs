execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] if entity @s[nbt={AngerTime:0}] run particle minecraft:dust_color_transition{from_color:[.8f,.1f,.1f],scale:2f,to_color:[.8f,.2f,.2f]} ~ ~1 ~ 1 1 1 0 20
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] if entity @s[nbt={AngerTime:0}] run playsound minecraft:entity.polar_bear.warning hostile @a[distance=..64] ~ ~ ~ 2 .8 .5

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] run data merge entity @s {AngerTime:200}
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] run data modify entity @s AngryAt set from entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] UUID
