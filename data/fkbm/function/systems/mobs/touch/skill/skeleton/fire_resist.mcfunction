data modify entity @s Fire set value -1s
execute if score SkeletonFireResistance fkbm.options matches 1 if predicate fkbm:mobs/equipment/head_air run data merge entity @s {ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute if score SkeletonFireResistance fkbm.options matches 1 if predicate fkbm:mobs/equipment/head_air run return run item replace entity @s armor.head with minecraft:stone_button
execute if score SkeletonFireResistance fkbm.options matches 2 run return run effect give @s minecraft:fire_resistance 999999 0 true
