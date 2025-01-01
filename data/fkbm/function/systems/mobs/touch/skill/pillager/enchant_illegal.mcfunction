# generic
data modify entity @s HandItems[0].components."minecraft:custom_name" set value '{"italic":false,"text":"Illegal Crossbow"}'
data modify entity @s HandItems[0].components."minecraft:item_name" set from entity @s HandItems[0].components."minecraft:custom_name"
data modify entity @s HandItems[0].components."minecraft:damage" set value 445
data modify entity @s HandDropChances[0] set value 0.010f
