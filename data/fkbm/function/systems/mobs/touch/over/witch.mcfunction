# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.witch.regen
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.witch.summon
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.witch.zonya
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.movement_speed",base:0.30}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/60 run tag @s add fkbm.witch.regen
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.witch.summon
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.witch.zonya
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.armor",base:8},{id:"minecraft:generic.movement_speed",base:0.32}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/90 run tag @s add fkbm.witch.regen
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.witch.summon
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.witch.zonya
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.armor",base:12},{id:"minecraft:generic.movement_speed",base:0.34}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/witch

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/witch

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.witch.regen] run effect give @s minecraft:regeneration 999999 1 true
scoreboard players set @s[tag=fkbm.witch.summon] fkbm.var 0
scoreboard players set @s[tag=fkbm.witch.zonya] fkbm.cd1 0

tag @s add fkbm.touched
