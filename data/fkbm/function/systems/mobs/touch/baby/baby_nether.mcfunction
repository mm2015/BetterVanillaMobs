execute as @e[type=minecraft:hoglin,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/nether/hoglin
execute as @e[type=minecraft:piglin,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/nether/piglin
execute as @e[type=minecraft:wolf,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/over/wolf
