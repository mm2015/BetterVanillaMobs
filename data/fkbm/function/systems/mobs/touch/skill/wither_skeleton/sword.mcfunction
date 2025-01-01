item replace entity @s weapon.mainhand with minecraft:iron_sword[damage=230,custom_name='{"italic":false,"text":"Great Sword"}',item_name='{"italic":false,"text":"Great Sword"}']
data modify entity @s HandDropChances[0] set value 0.03F
attribute @s minecraft:generic.attack_damage modifier add fkbm.greatsword.damage 3 add_value
