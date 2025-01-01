# generic
data modify entity @s HandItems[0].components."minecraft:custom_name" set value '{"italic":false,"text":"Homemade Crossbow"}'
data modify entity @s HandItems[0].components."minecraft:item_name" set from entity @s HandItems[0].components."minecraft:custom_name"
data modify entity @s HandItems[0].components."minecraft:damage" set value 445
data modify entity @s HandDropChances[0] set value 0.050f

# enchant
execute if score #IndividualDiff fkbm.options matches 1 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:quick_charge":1}
execute if score #IndividualDiff fkbm.options matches 2 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:quick_charge":2}
execute if score #IndividualDiff fkbm.options matches 3 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:quick_charge":3}
