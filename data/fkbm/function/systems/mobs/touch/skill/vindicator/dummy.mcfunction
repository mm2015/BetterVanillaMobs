# attr
attribute @s minecraft:generic.max_health modifier add fkbm.worker.health 0.50 add_multiplied_base
attribute @s minecraft:generic.attack_damage modifier add fkbm.worker.dmg 4 add_value
attribute @s minecraft:generic.movement_speed modifier add fkbm.worker.speed -0.10 add_multiplied_base

# equipment
item replace entity @s weapon.mainhand with minecraft:wooden_shovel[damage=39,custom_name='{"italic":false,"text":"Makeshift Club"}',item_name='{"italic":false,"text":"Makeshift Club"}']
item replace entity @s weapon.offhand with minecraft:cobblestone
