# tag
tag @s add fkbm.affinity.strong

# atk flat
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_flat 2 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_flat 3 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_flat 4 add_value

# atk multi
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_multi .10 add_multiplied_total
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_multi .15 add_multiplied_total
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.attack_damage modifier add fkbm.affinity.atk_dmg_multi .20 add_multiplied_total

# atk speed
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:generic.attack_speed modifier add fkbm.affinity.atk_speed .10 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:generic.attack_speed modifier add fkbm.affinity.atk_speed .15 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:generic.attack_speed modifier add fkbm.affinity.atk_speed .20 add_multiplied_base
