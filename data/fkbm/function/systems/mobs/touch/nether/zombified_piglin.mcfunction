# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.zombified_piglin.infected
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/05 run tag @s add fkbm.zombified_piglin.explosive
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/01 run tag @s add fkbm.zombified_piglin.aggressive
execute if score #IndividualDiff fkbm.options matches 1 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f,attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.26}],CanPickUpLoot:1b,CanBreakDoors:1b}
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:8f,attributes:[{id:"minecraft:generic.max_health",base:8},{id:"minecraft:generic.follow_range",base:32},{id:"minecraft:generic.knockback_resistance",base:0.2},{id:"minecraft:generic.movement_speed",base:0.16}],CanPickUpLoot:1b}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/15 run tag @s add fkbm.zombified_piglin.infected
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/10 run tag @s add fkbm.zombified_piglin.explosive
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/02 run tag @s add fkbm.zombified_piglin.aggressive
execute if score #IndividualDiff fkbm.options matches 2 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:30f,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.follow_range",base:48},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.31}],CanPickUpLoot:1b,CanBreakDoors:1b}
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:10f,attributes:[{id:"minecraft:generic.max_health",base:10},{id:"minecraft:generic.follow_range",base:48},{id:"minecraft:generic.knockback_resistance",base:0.4},{id:"minecraft:generic.movement_speed",base:0.20}],CanPickUpLoot:1b}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/20 run tag @s add fkbm.zombified_piglin.infected
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/15 run tag @s add fkbm.zombified_piglin.explosive
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/03 run tag @s add fkbm.zombified_piglin.aggressive
execute if score #IndividualDiff fkbm.options matches 3 unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:40f,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.36}],CanPickUpLoot:1b,CanBreakDoors:1b}
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbm:mobs/is_baby run data merge entity @s {Health:12f,attributes:[{id:"minecraft:generic.max_health",base:12},{id:"minecraft:generic.follow_range",base:64},{id:"minecraft:generic.knockback_resistance",base:0.6},{id:"minecraft:generic.movement_speed",base:0.24}],CanPickUpLoot:1b}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/zombified_piglin

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/zombified_piglin

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:golden_sword
execute if entity @s[tag=fkbm.zombified_piglin.infected] run item replace entity @s weapon.mainhand with minecraft:red_mushroom
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run item replace entity @s armor.head with minecraft:shroomlight
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=fkbm.zombified_piglin.aggressive] run function fkbm:systems/mobs/touch/skill/zombified_piglin/aggressive
scoreboard players set @s[tag=fkbm.zombified_piglin.explosive] fkbm.var 0
scoreboard players set @s[tag=fkbm.zombified_piglin.infected] fkbm.cd1 0

tag @s add fkbm.touched
