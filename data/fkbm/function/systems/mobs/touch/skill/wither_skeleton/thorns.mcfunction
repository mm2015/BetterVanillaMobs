# head
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.head with minecraft:golden_helmet[damage=57,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.head with minecraft:netherite_helmet[damage=387,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# chest
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.chest with minecraft:golden_chestplate[damage=92,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.chest with minecraft:netherite_chestplate[damage=552,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# legs
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.legs with minecraft:golden_leggings[damage=85,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.legs with minecraft:netherite_leggings[damage=535,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# feet
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.feet with minecraft:golden_boots[damage=71,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.feet with minecraft:netherite_boots[damage=461,enchantments={levels:{"minecraft:thorns":2}},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# loot chance if netherite
execute if predicate fkbm:mobs/equipment/head_netherite run data modify entity @s ArmorDropChances[0] set value 0.01F
execute if predicate fkbm:mobs/equipment/chest_netherite run data modify entity @s ArmorDropChances[1] set value 0.01F
execute if predicate fkbm:mobs/equipment/legs_netherite run data modify entity @s ArmorDropChances[2] set value 0.01F
execute if predicate fkbm:mobs/equipment/feet_netherite run data modify entity @s ArmorDropChances[3] set value 0.01F
