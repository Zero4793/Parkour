# as @a at @s

# store id
execute store result storage parkour id int 1 run scoreboard players get @s zero.id
# spawn
execute as @s at @s run function parkour:ensure_one_spawn with storage parkour
execute if block ~ ~-1 ~ bedrock run function parkour:set_spawn with storage parkour
execute if block ~ ~-1 ~ grass_block run function parkour:respawn with storage parkour
execute if block ~ ~-1 ~ lava run function parkour:respawn with storage parkour

# stones
execute if block ~ ~-1 ~ granite run tp @s ~ ~6 ~
execute if block ~ ~-1 ~ polished_granite run tp @s ~ ~-6 ~
execute if block ~ ~-1 ~ diorite run tp @s ~6 ~ ~
execute if block ~ ~-1 ~ polished_diorite run tp @s ~-6 ~ ~
execute if block ~ ~-1 ~ andesite run tp @s ~ ~ ~6
execute if block ~ ~-1 ~ polished_andesite run tp @s ~ ~ ~-6

# ores
execute if block ~ ~-1 ~ minecraft:coal_ore run effect give @s minecraft:wither 1 1 true
execute if block ~ ~-1 ~ minecraft:iron_ore run effect give @s minecraft:slowness 1 1 true
execute if block ~ ~-1 ~ minecraft:gold_ore run effect give @s minecraft:speed 1 1 true
execute if block ~ ~-1 ~ minecraft:lapis_ore run effect give @s minecraft:jump_boost 1 1 true
execute if block ~ ~-1 ~ minecraft:emerald_ore run effect give @s minecraft:slow_falling 1 1 true
execute if block ~ ~-1 ~ minecraft:diamond_ore run effect give @s minecraft:levitation 1 1 true
# ore full blocks
execute if block ~ ~-1 ~ minecraft:coal_block run effect give @s minecraft:wither 3 8 true
execute if block ~ ~-1 ~ minecraft:iron_block run effect give @s minecraft:slowness 3 8 true
execute if block ~ ~-1 ~ minecraft:gold_block run effect give @s minecraft:speed 3 8 true
execute if block ~ ~-1 ~ minecraft:lapis_block run effect give @s minecraft:jump_boost 3 8 true
execute if block ~ ~-1 ~ minecraft:emerald_block run effect give @s minecraft:slow_falling 3 255 true
execute if block ~ ~-1 ~ minecraft:diamond_block run effect give @s minecraft:levitation 3 8 true
# redstone, copper, deep and nether variants

# wool
execute if block ~ ~-1 ~ black_wool run setblock ~ ~-1 ~ air
execute if block ~ ~-1 ~ gray_wool run setblock ~ ~-1 ~ black_wool
execute if block ~ ~-1 ~ brown_wool run setblock ~ ~-1 ~ gray_wool
execute if block ~ ~-1 ~ red_wool run setblock ~ ~-1 ~ brown_wool
execute if block ~ ~-1 ~ orange_wool run setblock ~ ~-1 ~ red_wool
execute if block ~ ~-1 ~ yellow_wool run setblock ~ ~-1 ~ orange_wool
execute if block ~ ~-1 ~ lime_wool run setblock ~ ~-1 ~ yellow_wool
execute if block ~ ~-1 ~ green_wool run setblock ~ ~-1 ~ lime_wool
execute if block ~ ~-1 ~ cyan_wool run setblock ~ ~-1 ~ green_wool
execute if block ~ ~-1 ~ light_blue_wool run setblock ~ ~-1 ~ cyan_wool
execute if block ~ ~-1 ~ blue_wool run setblock ~ ~-1 ~ light_blue_wool
execute if block ~ ~-1 ~ purple_wool run setblock ~ ~-1 ~ blue_wool
execute if block ~ ~-1 ~ magenta_wool run setblock ~ ~-1 ~ purple_wool
execute if block ~ ~-1 ~ pink_wool run setblock ~ ~-1 ~ magenta_wool
execute if block ~ ~-1 ~ light_gray_wool run setblock ~ ~-1 ~ pink_wool
execute if block ~ ~-1 ~ white_wool run setblock ~ ~-1 ~ light_gray_wool

# barrier<->smooth_stone? by redstone_ore?
# or redstone night vision?
# or nausea, darkness, blindness
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:barrier replace minecraft:smooth_stone
execute if block ~ ~-1 ~ minecraft:redstone_ore run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:smooth_stone replace minecraft:barrier
