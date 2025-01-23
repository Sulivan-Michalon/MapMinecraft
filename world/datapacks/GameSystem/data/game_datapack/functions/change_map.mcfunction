scoreboard players add @a MapCount 1
execute if score @p MapCount matches 3 run scoreboard players set @a MapCount 1
kill @e[tag=spawnArmorStand]
kill @e[type=minecraft:item]

place template void 10 -62 -4

execute if score @p MapCount matches 1 run place template minecraft:map_island 33 7 11

execute if score @p MapCount matches 2 run place template minecraft:map_arene 33 7 11

