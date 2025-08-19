#as & at player

# if 0 spawn 1
$execute unless entity @e[type=minecraft:armor_stand,tag=spawn,scores={zero.id=$(id)}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,Tags:[spawn,new]}
$scoreboard players set @n[type=minecraft:armor_stand,tag=spawn,tag=new] zero.id $(id)
tag @e[type=minecraft:armor_stand,tag=spawn,tag=new] remove new

# if >1 kill furthest
$execute at @n[type=minecraft:armor_stand,tag=spawn,scores={zero.id=$(id)}] run kill @e[type=minecraft:armor_stand,tag=spawn,scores={zero.id=$(id)},distance=1..]