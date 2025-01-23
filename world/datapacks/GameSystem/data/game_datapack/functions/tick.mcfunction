
#Game timer start
execute as @a run scoreboard players add @a Timer 1

#Game decompte
execute as @a[scores={Timer=10..12}] run title @a title {"text":"3","bold":true,"color":"red"}
execute as @a[scores={Timer=20..22}] run title @a title {"text":"2","bold":true,"color":"yellow"}
execute as @a[scores={Timer=40..42}] run title @a title {"text":"1","bold":true,"color":"green"}
execute as @a[scores={Timer=60..62}] run function game_datapack:game_start

#Fin d'une partie, initialisation
execute if entity @e[type=minecraft:player,scores={deaths=1}] run function game_datapack:game_end
execute if entity @e[type=minecraft:player,scores={deaths=1}] run title @a title ["",{"selector":"@e[type=minecraft:player,scores={deaths=0}]","color":"white"},{"text":" a gagné !"}]



#Map Random Selector
execute as @a run scoreboard players add @s MapCountSpetial 1
execute if score @p MapCount matches 1 if score @p MapCountSpetial matches 5.. run scoreboard players set @a MapCountSpetial 1
execute if score @p MapCount matches 2 if score @p MapCountSpetial matches 5.. run scoreboard players set @a MapCountSpetial 1




# -- levier map spétial --

# _MAP SPETIAL_
# si OFF
execute if block 25 9 25 lever[powered=false] if entity @e[tag=SpetialON] run summon minecraft:armor_stand 25 8.10 25 {Invisible:true,NoGravity:true,Small:true,CustomNameVisible:true,CustomName:'{"text":"OFF","color":"red","bold":true}',Tags:["SpetialOFF"]}
execute if block 25 9 25 lever[powered=false] if entity @e[tag=SpetialON] run kill @e[tag=SpetialON]

# si ON
execute if block 25 9 25 lever[powered=true] if entity @e[tag=SpetialOFF] run summon minecraft:armor_stand 25 8.10 25 {Invisible:true,NoGravity:true,Small:true,CustomNameVisible:true,CustomName:'{"text":"ON","color":"green","bold":true}',Tags:["SpetialON"]}
execute if block 25 9 25 lever[powered=true] if entity @e[tag=SpetialOFF] run kill @e[tag=SpetialOFF]

# _Restart_
# si OFF
execute if block 23 9 25 lever[powered=false] if entity @e[tag=RestartON] run summon minecraft:armor_stand 23 8.10 25 {Invisible:true,NoGravity:true,Small:true,CustomNameVisible:true,CustomName:'{"text":"OFF","color":"red","bold":true}',Tags:["RestartOFF"]}
execute if block 23 9 25 lever[powered=false] if entity @e[tag=RestartON] run kill @e[tag=RestartON]

# si ON
execute if block 23 9 25 lever[powered=true] if entity @e[tag=RestartOFF] run summon minecraft:armor_stand 23 8.10 25 {Invisible:true,NoGravity:true,Small:true,CustomNameVisible:true,CustomName:'{"text":"ON","color":"green","bold":true}',Tags:["RestartON"]}
execute if block 23 9 25 lever[powered=true] if entity @e[tag=RestartOFF] run kill @e[tag=RestartOFF]






