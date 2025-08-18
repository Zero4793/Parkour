# Zero_4793

execute as @a at @s run function parkour:blocks

# redo ID track as zero namespace, fix also in creative dp
# execute as @p[tag=!set] at @s run scoreboard players operation playerCount ID += 1 NUM
# execute as @p[tag=!set] at @s run scoreboard players operation @s ID = playerCount ID
# tag @p[tag=!set] add set

# ensure 1 spawnpoint per player, spawn new if zero, delete furthest if >1
execute unless entity @e[type=minecraft:armor_stand,tag=spawn] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,Tags:[spawn]}

