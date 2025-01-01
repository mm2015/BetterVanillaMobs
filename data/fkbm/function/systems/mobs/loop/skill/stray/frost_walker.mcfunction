# water frozener
fill ~0 ~0 ~-1 ~0 ~0 ~1 minecraft:ice replace minecraft:water
fill ~-1 ~0 ~0 ~1 ~0 ~0 minecraft:ice replace minecraft:water
fill ~0 ~-1 ~0 ~0 ~-1 ~0 minecraft:ice replace minecraft:water

# fx
particle minecraft:dust_color_transition{from_color:[.5f,.5f,1f],scale:2f,to_color:[1f,1f,1f]} ~ ~-1 ~ 2 .5 2 0 50
playsound minecraft:block.amethyst_block.fall hostile @a[distance=..16] ~ ~-1 ~ 1 .5 .5
