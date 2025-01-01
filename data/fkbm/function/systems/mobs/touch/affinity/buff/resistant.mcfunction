# tag
tag @s add fkbm.affinity.resistant

# armor
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.armor modifier add fkbm.affinity.armor 10 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.armor modifier add fkbm.affinity.armor 12 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.armor modifier add fkbm.affinity.armor 14 add_value

# toughness
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.armor_toughness modifier add fkbm.affinity.armor_toughness 4 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.armor_toughness modifier add fkbm.affinity.armor_toughness 6 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.armor_toughness modifier add fkbm.affinity.armor_toughness 8 add_value
