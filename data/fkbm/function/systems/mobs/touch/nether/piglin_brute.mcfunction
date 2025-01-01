# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.piglin_brute.armored
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.piglin_brute.shield
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.piglin_brute.berserk
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.35}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.piglin_brute.armored
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.piglin_brute.shield
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.piglin_brute.berserk
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.36}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.piglin_brute.armored
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/40 run tag @s add fkbm.piglin_brute.shield
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.piglin_brute.berserk
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:70f,attributes:[{id:"minecraft:generic.max_health",base:70},{id:"minecraft:generic.knockback_resistance",base:0.5},{id:"minecraft:generic.movement_speed",base:0.37}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/piglin_brute

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/piglin_brute

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.piglin_brute.armored] run function fkbm:systems/mobs/touch/skill/piglin_brute/armored
execute if entity @s[tag=fkbm.piglin_brute.shield] run function fkbm:systems/mobs/touch/skill/piglin_brute/shield
execute if entity @s[tag=fkbm.piglin_brute.berserk] run function fkbm:systems/mobs/touch/skill/piglin_brute/berserk
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/25 run item replace entity @s weapon.mainhand with minecraft:golden_axe

tag @s add fkbm.touched
