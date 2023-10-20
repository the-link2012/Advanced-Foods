#Checks to see if the effects in af:food effects[0] matches af:food Item2.tag.effects[0]. If no, remove effects until none
#then add to effects on main item and end. If yes, add duration, and end. 


#Get comparing
scoreboard players set match temp 0
scoreboard players set aplifier temp 0
scoreboard players set amplifier2 temp 0
scoreboard players set id temp 0
scoreboard players set id2 temp 0
scoreboard players set duration temp 0
scoreboard players set duration2 temp 0
execute store result score amplifier temp run data get storage af:food Item2.tag.effects[0].amplifier
execute store result score amplifier2 temp run data get storage af:food effects[0].amplifier
data modify storage af:food testeffect set value {}
data modify storage af:food testeffect set from storage af:food Item2.tag.effects[0]
execute if data storage af:food testeffect{id:"minecraft:speed"} run scoreboard players set id temp 1
execute if data storage af:food testeffect{id:"minecraft:slowness"} run scoreboard players set id temp 2
execute if data storage af:food testeffect{id:"minecraft:haste"} run scoreboard players set id temp 3
execute if data storage af:food testeffect{id:"minecraft:mining_fatigue"} run scoreboard players set id temp 4
execute if data storage af:food testeffect{id:"minecraft:strength"} run scoreboard players set id temp 5
execute if data storage af:food testeffect{id:"minecraft:instant_health"} run scoreboard players set id temp 6
execute if data storage af:food testeffect{id:"minecraft:instant_damage"} run scoreboard players set id temp 7
execute if data storage af:food testeffect{id:"minecraft:jump_boost"} run scoreboard players set id temp 8
execute if data storage af:food testeffect{id:"minecraft:nausea"} run scoreboard players set id temp 9
execute if data storage af:food testeffect{id:"minecraft:regeneration"} run scoreboard players set id temp 10
execute if data storage af:food testeffect{id:"minecraft:resistance"} run scoreboard players set id temp 11
execute if data storage af:food testeffect{id:"minecraft:fire_resistance"} run scoreboard players set id temp 12
execute if data storage af:food testeffect{id:"minecraft:water_breathing"} run scoreboard players set id temp 13
execute if data storage af:food testeffect{id:"minecraft:invisibility"} run scoreboard players set id temp 14
execute if data storage af:food testeffect{id:"minecraft:blindness"} run scoreboard players set id temp 15
execute if data storage af:food testeffect{id:"minecraft:night_vision"} run scoreboard players set id temp 16
execute if data storage af:food testeffect{id:"minecraft:hunger"} run scoreboard players set id temp 17
execute if data storage af:food testeffect{id:"minecraft:weakness"} run scoreboard players set id temp 18
execute if data storage af:food testeffect{id:"minecraft:poison"} run scoreboard players set id temp 19
execute if data storage af:food testeffect{id:"minecraft:wither"} run scoreboard players set id temp 20
execute if data storage af:food testeffect{id:"minecraft:health_boost"} run scoreboard players set id temp 21
execute if data storage af:food testeffect{id:"minecraft:absorption"} run scoreboard players set id temp 22
execute if data storage af:food testeffect{id:"minecraft:saturation"} run scoreboard players set id temp 23
execute if data storage af:food testeffect{id:"minecraft:glowing"} run scoreboard players set id temp 24
execute if data storage af:food testeffect{id:"minecraft:levitation"} run scoreboard players set id temp 25
execute if data storage af:food testeffect{id:"minecraft:luck"} run scoreboard players set id temp 26
execute if data storage af:food testeffect{id:"minecraft:unluck"} run scoreboard players set id temp 27
execute if data storage af:food testeffect{id:"minecraft:slow_falling"} run scoreboard players set id temp 28
execute if data storage af:food testeffect{id:"minecraft:conduit_power"} run scoreboard players set id temp 29
execute if data storage af:food testeffect{id:"minecraft:dolphins_grace"} run scoreboard players set id temp 30
execute if data storage af:food testeffect{id:"minecraft:bad_omen"} run scoreboard players set id temp 31
execute if data storage af:food testeffect{id:"minecraft:hero_of_the_village"} run scoreboard players set id temp 32
execute if data storage af:food testeffect{id:"minecraft:darkness"} run scoreboard players set id temp 33

data modify storage af:food testeffect set value {}
data modify storage af:food testeffect set from storage af:food effects[0]
execute if data storage af:food testeffect{id:"minecraft:speed"} run scoreboard players set id2 temp 1
execute if data storage af:food testeffect{id:"minecraft:slowness"} run scoreboard players set id2 temp 2
execute if data storage af:food testeffect{id:"minecraft:haste"} run scoreboard players set id2 temp 3
execute if data storage af:food testeffect{id:"minecraft:mining_fatigue"} run scoreboard players set id2 temp 4
execute if data storage af:food testeffect{id:"minecraft:strength"} run scoreboard players set id2 temp 5
execute if data storage af:food testeffect{id:"minecraft:instant_health"} run scoreboard players set id2 temp 6
execute if data storage af:food testeffect{id:"minecraft:instant_damage"} run scoreboard players set id2 temp 7
execute if data storage af:food testeffect{id:"minecraft:jump_boost"} run scoreboard players set id2 temp 8
execute if data storage af:food testeffect{id:"minecraft:nausea"} run scoreboard players set id2 temp 9
execute if data storage af:food testeffect{id:"minecraft:regeneration"} run scoreboard players set id2 temp 10
execute if data storage af:food testeffect{id:"minecraft:resistance"} run scoreboard players set id2 temp 11
execute if data storage af:food testeffect{id:"minecraft:fire_resistance"} run scoreboard players set id2 temp 12
execute if data storage af:food testeffect{id:"minecraft:water_breathing"} run scoreboard players set id2 temp 13
execute if data storage af:food testeffect{id:"minecraft:invisibility"} run scoreboard players set id2 temp 14
execute if data storage af:food testeffect{id:"minecraft:blindness"} run scoreboard players set id2 temp 15
execute if data storage af:food testeffect{id:"minecraft:night_vision"} run scoreboard players set id2 temp 16
execute if data storage af:food testeffect{id:"minecraft:hunger"} run scoreboard players set id2 temp 17
execute if data storage af:food testeffect{id:"minecraft:weakness"} run scoreboard players set id2 temp 18
execute if data storage af:food testeffect{id:"minecraft:poison"} run scoreboard players set id2 temp 19
execute if data storage af:food testeffect{id:"minecraft:wither"} run scoreboard players set id2 temp 20
execute if data storage af:food testeffect{id:"minecraft:health_boost"} run scoreboard players set id2 temp 21
execute if data storage af:food testeffect{id:"minecraft:absorption"} run scoreboard players set id2 temp 22
execute if data storage af:food testeffect{id:"minecraft:saturation"} run scoreboard players set id2 temp 23
execute if data storage af:food testeffect{id:"minecraft:glowing"} run scoreboard players set id2 temp 24
execute if data storage af:food testeffect{id:"minecraft:levitation"} run scoreboard players set id2 temp 25
execute if data storage af:food testeffect{id:"minecraft:luck"} run scoreboard players set id2 temp 26
execute if data storage af:food testeffect{id:"minecraft:unluck"} run scoreboard players set id2 temp 27
execute if data storage af:food testeffect{id:"minecraft:slow_falling"} run scoreboard players set id2 temp 28
execute if data storage af:food testeffect{id:"minecraft:conduit_power"} run scoreboard players set id2 temp 29
execute if data storage af:food testeffect{id:"minecraft:dolphins_grace"} run scoreboard players set id2 temp 30
execute if data storage af:food testeffect{id:"minecraft:bad_omen"} run scoreboard players set id2 temp 31
execute if data storage af:food testeffect{id:"minecraft:hero_of_the_village"} run scoreboard players set id2 temp 32
execute if data storage af:food testeffect{id:"minecraft:darkness"} run scoreboard players set id2 temp 33

#Compare
execute if score id temp = id2 temp if score amplifier temp = amplifier2 temp run scoreboard players set match temp 1

#debug
#tellraw @a [{"text":"Match "},{"score":{"name":"match","objective":"temp"}},{"text":" cycle "},{"score":{"name":"array","objective":"temp"}},{"nbt":"Item2.tag.effects[0]","storage":"af:food"},{"nbt":"effects[0]","storage":"af:food"}]

#If same, add and save
execute if score match temp matches 1.. store result score duration temp run data get storage af:food Item2.tag.effects[0].duration
execute if score match temp matches 1.. store result score duration2 temp run data get storage af:food effects[0].duration
#Multiply duration
execute if score match temp matches 1.. run scoreboard players operation duration temp *= multiplier af.options
execute if score match temp matches 1.. run scoreboard players operation duration temp /= 100 numbers
execute if score match temp matches 1.. run scoreboard players operation duration temp += duration2 temp
execute if score match temp matches 1.. store result storage af:food Item2.tag.effects[0].duration long 1 run scoreboard players add duration temp 0
execute if score match temp matches 1.. if score array temp matches 0 run data modify storage af:food Item.tag.effects[0] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 1 run data modify storage af:food Item.tag.effects[1] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 2 run data modify storage af:food Item.tag.effects[2] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 3 run data modify storage af:food Item.tag.effects[3] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 4 run data modify storage af:food Item.tag.effects[4] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 5 run data modify storage af:food Item.tag.effects[5] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 6 run data modify storage af:food Item.tag.effects[6] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 7 run data modify storage af:food Item.tag.effects[7] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 8 run data modify storage af:food Item.tag.effects[8] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 9 run data modify storage af:food Item.tag.effects[9] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 10 run data modify storage af:food Item.tag.effects[10] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 11 run data modify storage af:food Item.tag.effects[11] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 12 run data modify storage af:food Item.tag.effects[12] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 13 run data modify storage af:food Item.tag.effects[13] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 14 run data modify storage af:food Item.tag.effects[14] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 15 run data modify storage af:food Item.tag.effects[15] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 16 run data modify storage af:food Item.tag.effects[16] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 17 run data modify storage af:food Item.tag.effects[17] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 18 run data modify storage af:food Item.tag.effects[18] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 19 run data modify storage af:food Item.tag.effects[19] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 20 run data modify storage af:food Item.tag.effects[20] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 21 run data modify storage af:food Item.tag.effects[21] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 22 run data modify storage af:food Item.tag.effects[22] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 23 run data modify storage af:food Item.tag.effects[23] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 24 run data modify storage af:food Item.tag.effects[24] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 25 run data modify storage af:food Item.tag.effects[25] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 26 run data modify storage af:food Item.tag.effects[26] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 27 run data modify storage af:food Item.tag.effects[27] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 28 run data modify storage af:food Item.tag.effects[28] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 29 run data modify storage af:food Item.tag.effects[29] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 30 run data modify storage af:food Item.tag.effects[30] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 31 run data modify storage af:food Item.tag.effects[31] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 32 run data modify storage af:food Item.tag.effects[32] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 33 run data modify storage af:food Item.tag.effects[33] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 34 run data modify storage af:food Item.tag.effects[34] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 35 run data modify storage af:food Item.tag.effects[35] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 36 run data modify storage af:food Item.tag.effects[36] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 37 run data modify storage af:food Item.tag.effects[37] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 38 run data modify storage af:food Item.tag.effects[38] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 39 run data modify storage af:food Item.tag.effects[39] set from storage af:food Item2.tag.effects[0]
execute if score match temp matches 1.. if score array temp matches 40 run data modify storage af:food Item.tag.effects[40] set from storage af:food Item2.tag.effects[0]



#Array size/poitner adjustment
scoreboard players add array temp 1

#Remove 
data remove storage af:food effects[0]
#If nothing, save + multiply duration
execute unless score match temp matches 1.. unless data storage af:food effects[0] store result score duration temp run data get storage af:food Item2.tag.effects[0].duration
execute unless score match temp matches 1.. unless data storage af:food effects[0] run scoreboard players operation duration temp *= multiplier af.options
execute unless score match temp matches 1.. unless data storage af:food effects[0] run scoreboard players operation duration temp /= 100 numbers
execute unless score match temp matches 1.. unless data storage af:food effects[0] store result storage af:food Item2.tag.effects[0].duration long 1 run scoreboard players add duration temp 0
execute unless score match temp matches 1.. unless data storage af:food effects[0] run data modify storage af:food Item.tag.effects append from storage af:food Item2.tag.effects[0]
#If something, repeat
execute unless score match temp matches 1.. if data storage af:food effects[0] run function af:cooking/checkeffects