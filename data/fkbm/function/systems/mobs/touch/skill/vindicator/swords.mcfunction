# attr
attribute @s minecraft:generic.armor modifier add fkbm.swords.parry 10 add_value
attribute @s minecraft:generic.movement_speed modifier add fkbm.swords.speed 0.05 add_multiplied_base

# equipment
item replace entity @s weapon.mainhand with minecraft:iron_sword[damage=230]
item replace entity @s weapon.offhand with minecraft:iron_sword[damage=230,custom_name='{"italic":false,"text":"Iron Dagger"}',item_name='{"italic":false,"text":"Iron Dagger"}']
