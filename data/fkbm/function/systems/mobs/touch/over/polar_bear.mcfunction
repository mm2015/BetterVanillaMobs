# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# baby
tag @s[tag=fkbm.baby] remove fkbm.baby
execute if predicate fkbm:mobs/is_baby run tag @s add fkbm.baby

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.polar_bear.angry
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.movement_speed",base:0.28},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.movement_speed",base:0.24},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.polar_bear.angry
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.armor",base:6},{id:"minecraft:generic.movement_speed",base:0.30},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:6},{id:"minecraft:generic.movement_speed",base:0.26},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.polar_bear.angry
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:80f,attributes:[{id:"minecraft:generic.max_health",base:80},{id:"minecraft:generic.armor",base:8},{id:"minecraft:generic.movement_speed",base:0.32},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.armor",base:8},{id:"minecraft:generic.movement_speed",base:0.28},{id:"minecraft:generic.follow_range",base:50},{id:"minecraft:generic.knockback_resistance",base:1.00}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/polar_bear

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/polar_bear

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared

tag @s add fkbm.touched
