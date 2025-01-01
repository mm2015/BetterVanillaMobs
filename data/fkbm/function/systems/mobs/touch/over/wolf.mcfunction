# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# baby
tag @s[tag=fkbm.baby] remove fkbm.baby
execute if predicate fkbm:mobs/is_baby run tag @s add fkbm.baby

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.wolf.angry
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:12f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:12},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.40}]}
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:6f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:6},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.30}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.wolf.angry
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:16f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:16},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.40}]}
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:8f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:8},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.30}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.wolf.angry
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:20f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.40}]}
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=fkbm.baby] run data merge entity @s {Health:10f,CanPickUpLoot:1b,attributes:[{id:"minecraft:generic.max_health",base:10},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.movement_speed",base:0.30}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/wolf

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/wolf

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared


tag @s add fkbm.touched
