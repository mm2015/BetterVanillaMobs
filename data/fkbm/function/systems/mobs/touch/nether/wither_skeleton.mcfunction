# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run tag @s add fkbm.wither_skeleton.lookbreak
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.shield
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.thorns
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.wither_skeleton.bow
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.sword
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.wither_skeleton.darkness
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/05 run tag @s add fkbm.wither_skeleton.flying_blades
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.armor",base:2},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.26}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run tag @s add fkbm.wither_skeleton.lookbreak
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.wither_skeleton.shield
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.thorns
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.bow
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.sword
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.darkness
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/10 run tag @s add fkbm.wither_skeleton.flying_blades
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:50f,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.armor",base:4},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.3},{id:"minecraft:generic.movement_speed",base:0.28}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run tag @s add fkbm.wither_skeleton.lookbreak
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.wither_skeleton.shield
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/40 run tag @s add fkbm.wither_skeleton.thorns
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.bow
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/40 run tag @s add fkbm.wither_skeleton.sword
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.darkness
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.flying_blades
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:60f,attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.armor",base:6},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.5},{id:"minecraft:generic.movement_speed",base:0.30}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/wither_skeleton

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/wither_skeleton

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:stone_sword
execute if entity @s[tag=fkbm.wither_skeleton.bow] run function fkbm:systems/mobs/touch/skill/wither_skeleton/bow
execute if entity @s[tag=fkbm.wither_skeleton.sword] run function fkbm:systems/mobs/touch/skill/wither_skeleton/sword
execute if entity @s[tag=fkbm.wither_skeleton.shield] run function fkbm:systems/mobs/touch/skill/wither_skeleton/shield
execute if entity @s[tag=fkbm.wither_skeleton.thorns] run function fkbm:systems/mobs/touch/skill/wither_skeleton/thorns
scoreboard players set @s[tag=fkbm.wither_skeleton.shield] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.wither_skeleton.darkness] fkbm.cd2 0
scoreboard players set @s[tag=fkbm.wither_skeleton.flying_blades] fkbm.cd3 0

tag @s add fkbm.touched
