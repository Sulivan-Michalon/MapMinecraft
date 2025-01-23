spawnpoint @a 25 8 18
effect clear @a
effect give @a night_vision infinite 1 false
clear @a
gamemode adventure @a

tell @a test mon pote


execute if block 23 9 25 lever[powered=true] run say test1
execute if block 23 9 25 lever[powered=true] run function game_datapack:game_start
execute if block 23 9 25 lever[powered=false] run say test2
execute if block 23 9 25 lever[powered=false] run tp @a 25 8 18

#ne pas mettre avant mon reuf
scoreboard players set @a deaths 0 



