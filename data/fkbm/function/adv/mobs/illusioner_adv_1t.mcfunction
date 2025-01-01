execute at @a[tag=fkbm.illusioner_chance] as @e[type=#fkbm:illusioner_replace,predicate=fkbm:generic/hurttime,distance=..8,limit=1,sort=nearest] at @s run function fkbm:adv/mobs/illusioner_chance
tag @a[tag=fkbm.illusioner_chance] remove fkbm.illusioner_chance
