# search for mobs in range
$execute as @e[type=#fkbm:touch_type_safemode,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..$(Range)] at @s run function fkbm:systems/totem/lock with storage fkbm:totem
