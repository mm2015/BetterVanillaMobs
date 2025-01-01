# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.stray.torch
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/40 run tag @s add fkbm.stray.frozenthorns
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/40 run tag @s add fkbm.stray.frostwalker
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.stray.fireresist
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.stray.iceprison
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.attack_knockback",base:0.1},{id:"minecraft:generic.movement_speed",base:0.23}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.stray.torch
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/60 run tag @s add fkbm.stray.frozenthorns
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/60 run tag @s add fkbm.stray.frostwalker
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.stray.fireresist
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/35 run tag @s add fkbm.stray.iceprison
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.attack_knockback",base:0.2},{id:"minecraft:generic.movement_speed",base:0.26}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.stray.torch
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/80 run tag @s add fkbm.stray.frozenthorns
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/80 run tag @s add fkbm.stray.frostwalker
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.stray.fireresist
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.stray.iceprison
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.attack_knockback",base:0.3},{id:"minecraft:generic.movement_speed",base:0.28}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/stray

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/stray

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:bow
execute if score StrayFireResistance fkbm.options matches 1..2 as @s[tag=fkbm.stray.fireresist] run function fkbm:systems/mobs/touch/skill/stray/fire_resist
scoreboard players set @s[tag=fkbm.stray.iceprison] fkbm.cd1 0

tag @s add fkbm.touched
