# generic
data modify entity @s HandItems[0].components."minecraft:custom_name" set value '{"italic":false,"text":"Multi-String Crossbow"}'
data modify entity @s HandItems[0].components."minecraft:item_name" set from entity @s HandItems[0].components."minecraft:custom_name"
data modify entity @s HandItems[0].components."minecraft:damage" set value 445
data modify entity @s HandDropChances[0] set value 0.030f

# enchant
execute if score #IndividualDiff fkbm.options matches 1 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:multishot":1}
execute if score #IndividualDiff fkbm.options matches 2 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:multishot":1}
execute if score #IndividualDiff fkbm.options matches 3 run return run data modify entity @s HandItems[0].components."minecraft:enchantments".levels merge value {"minecraft:multishot":1}
