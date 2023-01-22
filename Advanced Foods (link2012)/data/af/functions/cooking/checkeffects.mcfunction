#Checks to see if the effects in af:food effects[0] matches af:food Item2.tag.Effects[0]. If no, remove Effects until none
#then add to effects on main item and end. If yes, add duration, and end. 


#Get comparing
scoreboard players set match temp 0
scoreboard players set aplifier temp 0
scoreboard players set amplifier2 temp 0
scoreboard players set id temp 0
scoreboard players set id2 temp 0
scoreboard players set duration temp 0
scoreboard players set duration2 temp 0
execute store result score amplifier temp run data get storage af:food Item2.tag.Effects[0].Amplifier
execute store result score id temp run data get storage af:food Item2.tag.Effects[0].Id
execute store result score amplifier2 temp run data get storage af:food effects[0].Amplifier
execute store result score id2 temp run data get storage af:food effects[0].Id

#Compare
execute if score id temp = id2 temp if score amplifier temp = amplifier2 temp run scoreboard players set match temp 1

#If same, add and save
execute if score match temp matches 1.. store result score duration temp run data get storage af:food Item2.tag.Effects[0].Duration
execute if score match temp matches 1.. store result score duration2 temp run data get storage af:food effects[0].Duration
#Multiply duration
execute if score match temp matches 1.. run scoreboard players operation duration temp *= multiplier af.options
execute if score match temp matches 1.. run scoreboard players operation duration temp /= 100 numbers
execute if score match temp matches 1.. run scoreboard players operation duration temp += duration2 temp
execute if score match temp matches 1.. store result storage af:food Item2.tag.Effects[0].Duration long 1 run scoreboard players add duration temp 0
execute if score match temp matches 1.. if score array temp matches 0 run data modify storage af:food Item.tag.Effects[0] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 1 run data modify storage af:food Item.tag.Effects[1] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 2 run data modify storage af:food Item.tag.Effects[2] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 3 run data modify storage af:food Item.tag.Effects[3] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 4 run data modify storage af:food Item.tag.Effects[4] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 5 run data modify storage af:food Item.tag.Effects[5] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 6 run data modify storage af:food Item.tag.Effects[6] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 7 run data modify storage af:food Item.tag.Effects[7] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 8 run data modify storage af:food Item.tag.Effects[8] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 9 run data modify storage af:food Item.tag.Effects[9] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 10 run data modify storage af:food Item.tag.Effects[10] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 1 run data modify storage af:food Item.tag.Effects[21] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 2 run data modify storage af:food Item.tag.Effects[22] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 3 run data modify storage af:food Item.tag.Effects[23] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 4 run data modify storage af:food Item.tag.Effects[24] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 5 run data modify storage af:food Item.tag.Effects[25] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 6 run data modify storage af:food Item.tag.Effects[26] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 7 run data modify storage af:food Item.tag.Effects[27] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 8 run data modify storage af:food Item.tag.Effects[28] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 9 run data modify storage af:food Item.tag.Effects[29] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 0 run data modify storage af:food Item.tag.Effects[30] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 1 run data modify storage af:food Item.tag.Effects[31] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 2 run data modify storage af:food Item.tag.Effects[32] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 3 run data modify storage af:food Item.tag.Effects[33] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 4 run data modify storage af:food Item.tag.Effects[34] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 5 run data modify storage af:food Item.tag.Effects[35] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 6 run data modify storage af:food Item.tag.Effects[36] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 7 run data modify storage af:food Item.tag.Effects[37] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 8 run data modify storage af:food Item.tag.Effects[38] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 9 run data modify storage af:food Item.tag.Effects[39] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 0 run data modify storage af:food Item.tag.Effects[40] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 1 run data modify storage af:food Item.tag.Effects[41] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 2 run data modify storage af:food Item.tag.Effects[42] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 3 run data modify storage af:food Item.tag.Effects[43] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 4 run data modify storage af:food Item.tag.Effects[44] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 5 run data modify storage af:food Item.tag.Effects[45] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 6 run data modify storage af:food Item.tag.Effects[46] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 7 run data modify storage af:food Item.tag.Effects[47] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 8 run data modify storage af:food Item.tag.Effects[48] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 9 run data modify storage af:food Item.tag.Effects[49] set from storage af:food Item2.tag.Effects[0]
execute if score match temp matches 1.. if score array temp matches 0 run data modify storage af:food Item.tag.Effects[50] set from storage af:food Item2.tag.Effects[0]



#Array size/poitner adjustment
scoreboard players add array temp 1

#Remove 
data remove storage af:food effects[0]
#If nothing, save + multiply duration
execute unless score match temp matches 1.. unless data storage af:food effects[0] store result score duration temp run data get storage af:food Item2.tag.Effects[0].Duration
execute unless score match temp matches 1.. unless data storage af:food effects[0] run scoreboard players operation duration temp *= multiplier af.options
execute unless score match temp matches 1.. unless data storage af:food effects[0] run scoreboard players operation duration temp /= 100 numbers
execute unless score match temp matches 1.. unless data storage af:food effects[0] store result storage af:food Item2.tag.Effects[0].Duration long 1 run scoreboard players add duration temp 0
execute unless score match temp matches 1.. unless data storage af:food effects[0] run data modify storage af:food Item.tag.Effects append from storage af:food Item2.tag.Effects[0]
#If something, repeat
execute unless score match temp matches 1.. if data storage af:food effects[0] run function af:cooking/checkeffects