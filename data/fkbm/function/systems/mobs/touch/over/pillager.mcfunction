# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# into vindicator chance
execute at @s if predicate fkbm:structures/pillager_outpost run function fkbm:systems/mobs/touch/skill/vindicator/outpost

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.firework
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.pillager.multishot
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.quickcharge
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:24f,attributes:[{id:"minecraft:generic.max_health",base:24},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.movement_speed",base:0.35}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.firework
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.multishot
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.pillager.quickcharge
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:7},{id:"minecraft:generic.movement_speed",base:0.37}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.firework
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.pillager.multishot
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.pillager.quickcharge
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:36f,attributes:[{id:"minecraft:generic.max_health",base:36},{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.movement_speed",base:0.40}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/pillager

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/pillager

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if entity @s[tag=fkbm.pillager.quickcharge] run function fkbm:systems/mobs/touch/skill/pillager/enchant_quickcharge
execute if entity @s[tag=fkbm.pillager.multishot] run function fkbm:systems/mobs/touch/skill/pillager/enchant_multishot
execute if entity @s[tag=fkbm.pillager.quickcharge,tag=fkbm.pillager.multishot] run function fkbm:systems/mobs/touch/skill/pillager/enchant_illegal
scoreboard players set @s[tag=fkbm.pillager.firework] fkbm.cd1 0

tag @s add fkbm.touched
