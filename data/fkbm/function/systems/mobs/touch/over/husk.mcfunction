# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.torch
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.husk.door
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.husk.fence
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.hitslow
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.husk.regen
execute if score #IndividualDiff fkbm.options matches 1 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:50f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.16}]}
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.16}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.husk.torch
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.door
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.fence
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.husk.hitslow
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/60 run tag @s add fkbm.husk.regen
execute if score #IndividualDiff fkbm.options matches 2 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:60f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.18}]}
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:25f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.18}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.husk.torch
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/70 run tag @s add fkbm.husk.door
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.husk.fence
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.husk.hitslow
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/90 run tag @s add fkbm.husk.regen
execute if score #IndividualDiff fkbm.options matches 3 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:70f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:70},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.9},{id:"minecraft:generic.movement_speed",base:0.20}]}
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:30f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.9},{id:"minecraft:generic.movement_speed",base:0.20}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/husk

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/husk

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
scoreboard players set @s[tag=fkbm.husk.regen] fkbm.cd1 0

tag @s add fkbm.touched
