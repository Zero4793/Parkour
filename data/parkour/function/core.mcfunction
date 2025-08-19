# Zero_4793

execute as @a at @s run function parkour:blocks

# ensure 1 spawnpoint per player, spawn new if zero, delete furthest if >1
execute unless entity @e[type=minecraft:armor_stand,tag=spawn] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,Tags:[spawn]}

