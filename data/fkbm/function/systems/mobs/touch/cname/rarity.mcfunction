

















execute if score #rarity fkbm.options matches 00..19 run return run data modify storage fkbm:ename rarity set value '{"text":"[","color":"gray"},{"text":"Common","color":"white"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 20..39 run return run data modify storage fkbm:ename rarity set value '{"text":"[","color":"gray"},{"text":"Uncommon","color":"yellow"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 40..59 run return run data modify storage fkbm:ename rarity set value '{"text":"[","color":"gray"},{"text":"Rare","color":"aqua"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 60..79 run return run data modify storage fkbm:ename rarity set value '{"text":"[","color":"gray"},{"text":"Epic","color":"light_purple"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 0080.. run return run data modify storage fkbm:ename rarity set value '{"text":"[","color":"gray"},{"text":"Legendary","color":"#ff5145"},{"text":"] ","color":"gray"}' 
