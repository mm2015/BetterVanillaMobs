# equip sword
execute if score #IndividualDiff fkbm.options matches 1 run item replace entity @s weapon.mainhand with minecraft:wooden_sword[damage=49,custom_name='{"italic":false,"text":"Wooden Sword"}',item_name='{"italic":false,"text":"Wooden Sword"}']
execute if score #IndividualDiff fkbm.options matches 2 run item replace entity @s weapon.mainhand with minecraft:stone_sword[damage=111,custom_name='{"italic":false,"text":"Stone Sword"}',item_name='{"italic":false,"text":"Stone Sword"}']
execute if score #IndividualDiff fkbm.options matches 3 run item replace entity @s weapon.mainhand with minecraft:iron_sword[damage=230,custom_name='{"italic":false,"text":"Iron Sword"}',item_name='{"italic":false,"text":"Iron Sword"}']
data modify entity @s HandDropChances[0] set value 0.050f

tag @s add fkbm.skeleton.sworded
