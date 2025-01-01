# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.creeper.bait
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.creeper.baby
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.creeper.unstable
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/01 run tag @s add fkbm.creeper.powered
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:20f,Fuse:30s,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_speed",base:0.28}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.creeper.bait
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.creeper.baby
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.creeper.unstable
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/02 run tag @s add fkbm.creeper.powered
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:25f,Fuse:30s,attributes:[{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.movement_speed",base:0.30}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.creeper.bait
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.creeper.baby
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.creeper.unstable
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/03 run tag @s add fkbm.creeper.powered
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:30f,Fuse:30s,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.movement_speed",base:0.32}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/creeper

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/creeper

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute run function fkbm:systems/mobs/touch/skill/creeper/random_radius
execute run function fkbm:systems/mobs/touch/skill/creeper/random_fuse
execute if entity @s[tag=fkbm.creeper.baby] run function fkbm:systems/mobs/touch/skill/creeper/baby
execute if entity @s[tag=fkbm.creeper.powered] run function fkbm:systems/mobs/touch/skill/creeper/powered

tag @s add fkbm.touched
