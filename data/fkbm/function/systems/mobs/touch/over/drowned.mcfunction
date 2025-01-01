# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.drowned.hitslow
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.drowned.fireresist
execute if score #IndividualDiff fkbm.options matches 1 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.30}]}
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:8f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:8},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.20}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.drowned.hitslow
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.drowned.fireresist
execute if score #IndividualDiff fkbm.options matches 2 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:30f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.40}]}
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:10f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:10},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.30}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.drowned.hitslow
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.drowned.fireresist
execute if score #IndividualDiff fkbm.options matches 3 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:40f,CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.50}]}
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:12f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:12},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.40}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/drowned

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/drowned

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if score DrownedFireResistance fkbm.options matches 1..2 as @s[tag=fkbm.drowned.fireresist] run function fkbm:systems/mobs/touch/skill/drowned/fire_resist

tag @s add fkbm.touched
