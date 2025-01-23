
#Pour eviter le start game
execute as @a run scoreboard players set @a Timer 99999

gamerule showDeathMessages false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
time set 9250
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doWeatherCycle false
effect give @a night_vision infinite 1 false
setworldspawn 25 8 18
spawnpoint @a 25 8 18



scoreboard players add @a death 0



#--- Stock de toute les commands à garder ---

#pancarte pour changer de carte
#data merge block ~ ~-2 ~ {front_text:{messages:['{"text":""}','{"text":"Change Map","clickEvent":{"action":"run_command","value":"/function game_datapack:change_map"}}','{"text":""}','{"text":""}']}}

#Armor stand au spawn
#summon minecraft:armor_stand 38 15 17 {NoBasePlate:true,NoGravity:true,ShowArms:true,Rotation:[185f],Pose:{Head:[20f,0f,0f],LeftLeg:[347f,0f,0f],RightLeg:[15f,0f,0f],LeftArm:[336f,0f,0f]},ArmorItems:[{id:"leather_boots",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"leather_leggings",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"leather_chestplate",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"player_head",Count:1}],HandItems:[{},{id:"oak_planks",Count:1}],Tags:[spawnArmorStand]}
#summon minecraft:armor_stand 38 13 22 {NoBasePlate:true,NoGravity:true,ShowArms:true,Rotation:[176f],Pose:{Head:[337f,0f,0f],LeftLeg:[347f,0f,0f],RightLeg:[9f,0f,0f],LeftArm:[245f,26f,0f],RightArm:[244f,297f,0f]},ArmorItems:[{id:"leather_boots",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"leather_leggings",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"leather_chestplate",Count:1,components:{dyed_color:{rgb:9722392}}},{id:"player_head",Count:1}],HandItems:[{},{id:"bow",Count:1}],Tags:[spawnArmorStand]}
