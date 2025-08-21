#as & at player

# if 0 spawn 1
$execute unless entity @e[type=minecraft:marker,tag=spawn,nbt={data:{id:$(id)}}] run summon minecraft:marker ~ ~ ~ {Tags:[spawn],data:{id:$(id)}}
# if >1 kill furthest
$execute at @n[type=minecraft:marker,tag=spawn,nbt={data:{id:$(id)}}] run kill @e[type=minecraft:marker,tag=spawn,nbt={data:{id:$(id)}},distance=1..]