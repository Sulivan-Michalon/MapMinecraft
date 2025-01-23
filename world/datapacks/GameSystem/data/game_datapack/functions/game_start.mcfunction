

kill @e[type=wither_skeleton]
kill @e[type=warden]
kill @e[type=guardian]

clear @a
effect clear @a

tp @a[team=spectateur] 25 -10 18

#-- Island --
#spetial
execute if score @p MapCount matches 1 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 1 run place template minecraft:island 15 -60 -3
execute if score @p MapCount matches 1 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 2 run place template minecraft:island_chest 15 -60 -3
execute if score @p MapCount matches 1 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 3 run place template minecraft:island_guardian 15 -60 -3
execute if score @p MapCount matches 1 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 4 run place template minecraft:island_warden 15 -60 -3

#non spetial
execute if score @p MapCount matches 1 if block 25 9 25 lever[powered=false] run place template minecraft:island 15 -60 -3

#TP
execute if score @p MapCount matches 1 run tp @a[team=rouge] 25 -47 5 facing 26 -48 2
execute if score @p MapCount matches 1 run tp @a[team=bleu] 25 -47 31 facing 24 -48 34


#-- Arene --
#spetial
execute if score @p MapCount matches 2 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 1 run place template minecraft:arene 7 -30 6
execute if score @p MapCount matches 2 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 2 run place template minecraft:arene_ice 7 -30 6
execute if score @p MapCount matches 2 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 3 run place template minecraft:arene_lava 7 -30 6
execute if score @p MapCount matches 2 if block 25 9 25 lever[powered=true] if score @p MapCountSpetial matches 4 run place template minecraft:arene_wall 7 -30 6

#non spetial
execute if score @p MapCount matches 2 if block 25 9 25 lever[powered=false] run place template minecraft:arene 7 -30 6

#TP
execute if score @p MapCount matches 2 run tp @a[team=rouge] 32 -23 18
execute if score @p MapCount matches 2 run tp @a[team=bleu] 18 -23 18

#data modify block 26 -47 2 Items[{slot:"12b",}].id set value "minecraft:dirt"

title @a title {"text":"Game !","bold":true,"color":"dark_green"}
kill @e[type=minecraft:item]
gamemode survival @a
gamemode spectator @a[team=spectateur] 






