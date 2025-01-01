# compatibility: do not modify special mobs
function fkbm:compatibility/pre_secure

# totem: prevent mobs modification
execute run function fkbm:systems/totem/checks

# modify mobs
execute as @a[scores={fkbm.dim=0}] at @s run function fkbm:systems/mobs/touch/touch_over
execute as @a[scores={fkbm.dim=-1}] at @s run function fkbm:systems/mobs/touch/touch_nether
execute as @a[scores={fkbm.dim=1}] at @s run function fkbm:systems/mobs/touch/touch_end

# compatibility: secure my mobs
function fkbm:compatibility/post_secure
