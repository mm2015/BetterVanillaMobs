# break torch
execute if entity @s[tag=fkbm.stray.torch] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# frost walker
execute if entity @s[tag=fkbm.stray.frostwalker] if block ~ ~ ~ minecraft:water if block ~ ~1 ~ #fkbmtool:airs run function fkbm:systems/mobs/loop/skill/stray/frost_walker

# frozen thorns
# see advancement

# ice prison
execute if entity @s[tag=fkbm.stray.iceprison,scores={fkbm.cd1=..0}] if entity @p[distance=1..4,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/stray/ice_prison
scoreboard players operation @s[tag=fkbm.stray.iceprison,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
