# prevent modification in certain structures
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignored

# easy
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/10 run tag @s add fkbm.vex.dodge
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/20 run tag @s add fkbm.vex.axe
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.shield
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.swordleft
execute if score #IndividualDiff fkbm.options matches 1 run data merge entity @s {Health:14f,attributes:[{id:"minecraft:generic.max_health",base:14}]}

# normal
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/20 run tag @s add fkbm.vex.dodge
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.axe
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.shield
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.swordleft
execute if score #IndividualDiff fkbm.options matches 2 run data merge entity @s {Health:18f,attributes:[{id:"minecraft:generic.max_health",base:18}]}

# hard
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.dodge
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/40 run tag @s add fkbm.vex.axe
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.shield
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.swordleft
execute if score #IndividualDiff fkbm.options matches 3 run data merge entity @s {Health:22f,attributes:[{id:"minecraft:generic.max_health",base:22}]}

# affinity
execute run function fkbm:systems/mobs/touch/affinity/mobs/vex

# custom name
execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/vex

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# shared
execute if entity @s[tag=fkbm.vex.shield] run function fkbm:systems/mobs/touch/skill/vex/shield
execute if entity @s[tag=fkbm.vex.swordleft] run function fkbm:systems/mobs/touch/skill/vex/sword_left
execute if entity @s[tag=fkbm.vex.axe] run item replace entity @s weapon.mainhand with minecraft:iron_axe[damage=230,custom_name='{"italic":false,"text":"Iron Hatchet"}',item_name='{"italic":false,"text":"Iron Hatchet"}']
scoreboard players set @s[tag=fkbm.vex.dodge] fkbm.cd1 0

tag @s add fkbm.touched
