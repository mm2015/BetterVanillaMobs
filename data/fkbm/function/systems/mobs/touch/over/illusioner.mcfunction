# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/25 run tag @s add fkbm.illusioner.enchantedbow
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.illusioner.heal
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.illusioner.cdbuff
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:30f,SpellTicks:10,attributes:[{id:"minecraft:generic.max_health",base:30},{id:"minecraft:generic.armor",base:2}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/50 run tag @s add fkbm.illusioner.enchantedbow
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/40 run tag @s add fkbm.illusioner.heal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.illusioner.cdbuff
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:40f,SpellTicks:10,attributes:[{id:"minecraft:generic.max_health",base:40},{id:"minecraft:generic.armor",base:4}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.illusioner.enchantedbow
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/60 run tag @s add fkbm.illusioner.heal
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.illusioner.cdbuff
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:50f,SpellTicks:10,attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.armor",base:6}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/illusioner

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/illusioner

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=fkbm.illusioner.enchantedbow] run function fkbm:systems/mobs/touch/skill/illusioner/enchanted_bow
scoreboard players set @s[tag=fkbm.illusioner.heal] fkbm.cd1 0

tag @s add fkbm.touched
