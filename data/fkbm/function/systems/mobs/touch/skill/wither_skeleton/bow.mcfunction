item replace entity @s weapon.mainhand with minecraft:bow[damage=364,custom_name='{"italic":false,"text":"Long Bow"}',item_name='{"italic":false,"text":"Long Bow"}',enchantments={levels:{"minecraft:power":2}}] 
data modify entity @s HandDropChances[0] set value 0.03F

# prevent sword skill
tag @s[tag=fkbm.wither_skeleton.sword] remove fkbm.wither_skeleton.sword
