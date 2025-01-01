advancement revoke @s only fkbm:mobs/creeper_unstable

data modify entity @e[type=minecraft:creeper,tag=fkbm.creeper.unstable,distance=..64,sort=nearest,limit=1,predicate=fkbm:generic/hurttime] ignited set value 1b
data modify entity @e[type=minecraft:creeper,tag=fkbm.creeper.unstable,distance=..64,sort=nearest,limit=1,predicate=fkbm:generic/hurttime] Fuse set value 20s
