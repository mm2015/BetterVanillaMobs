# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:cname type.value set value "Vindicator"

## rarity/100
# skills
execute if entity @s[tag=fkbm.vindicator.rage] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.vindicator.swordman] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.vindicator.worker] run scoreboard players add #rarity fkbm.options 15

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 40


# set name
function fkbm:systems/mobs/touch/cname/generic
