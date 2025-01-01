# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.enderman.lookbreak
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.enderman.lookfreeze
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.enderman.vortex
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.attack_knockback",base:0.1},{id:"minecraft:generic.movement_speed",base:0.30}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.enderman.lookbreak
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.enderman.lookfreeze
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.enderman.vortex
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.attack_knockback",base:0.2},{id:"minecraft:generic.movement_speed",base:0.35}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.enderman.lookbreak
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.enderman.lookfreeze
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.enderman.vortex
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.attack_knockback",base:0.3},{id:"minecraft:generic.movement_speed",base:0.40}]}

# affinity
execute if score Affinity fkbm.options matches 1 run function fkbm:systems/mobs/touch/affinity/mobs/enderman

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/enderman

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
scoreboard players set @s[tag=fkbm.enderman.vortex] fkbm.var 0
scoreboard players set @s[tag=fkbm.enderman.lookbreak] fkbm.cd1 0

tag @s add fkbm.touched
