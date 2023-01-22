#Updates a sign's text at 7777 77 7777 to match the option effects of the mainhand lore
scoreboard players set potency temp 0
scoreboard players set duration temp 0
scoreboard players set id temp 0

#get values
execute store result score potency temp run data get storage af:food Potion.Amplifier
execute store result score duration temp run data get storage af:food Potion.Duration
execute store result score id temp run data get storage af:food Potion.Id

#Ignore regen
execute if score id temp matches 10 if score potency temp matches 5.. run scoreboard players set duration temp 0
execute if score id temp matches 10 if score potency temp matches 5.. run scoreboard players set potency temp 0
execute if score id temp matches 10 if score potency temp matches 0 if score duration temp matches 0 run scoreboard players set id temp 0

#update blocks
setblock 7777 77 7777 air
setblock 7777 79 7777 air
setblock 7777 79 7777 oak_sign 

#Set relevant text before combining
execute if score id temp matches 1 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.speed","color":"blue","italic":false}'}
execute if score id temp matches 2 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.slowness","color":"red","italic":false}'}
execute if score id temp matches 3 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.haste","color":"blue","italic":false}'}
execute if score id temp matches 4 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.mining_fatigue","color":"red","italic":false}'}
execute if score id temp matches 5 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.strength","color":"blue","italic":false}'}
execute if score id temp matches 6 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.instant_health","color":"blue","italic":false}'}
execute if score id temp matches 7 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.instant_damage","color":"red","italic":false}'}
execute if score id temp matches 8 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.jump_boost","color":"blue","italic":false}'}
execute if score id temp matches 9 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.nausea","color":"red","italic":false}'}
execute if score id temp matches 10 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.regeneration","color":"blue","italic":false}'}
execute if score id temp matches 11 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.resistance","color":"blue","italic":false}'}
execute if score id temp matches 12 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.fire_resistance","color":"blue","italic":false}'}
execute if score id temp matches 13 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.water_breathing","color":"blue","italic":false}'}
execute if score id temp matches 14 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.invisibility","color":"blue","italic":false}'}
execute if score id temp matches 15 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.blindness","color":"red","italic":false}'}
execute if score id temp matches 16 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.night_vision","color":"blue","italic":false}'}
execute if score id temp matches 17 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.hunger","color":"red","italic":false}'}
execute if score id temp matches 18 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.weakness","color":"red","italic":false}'}
execute if score id temp matches 19 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.poison","color":"red","italic":false}'}
execute if score id temp matches 20 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.wither","color":"red","italic":false}'}
execute if score id temp matches 21 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.health_boost","color":"blue","italic":false}'}
execute if score id temp matches 22 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.absorption","color":"blue","italic":false}'}
execute if score id temp matches 23 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.saturation","color":"blue","italic":false}'}
execute if score id temp matches 24 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.glowing","color":"blue","italic":false}'}
execute if score id temp matches 25 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.levitation","color":"blue","italic":false}'}
execute if score id temp matches 26 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.luck","color":"blue","italic":false}'}
execute if score id temp matches 27 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.unluck","color":"red","italic":false}'}
execute if score id temp matches 28 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.slow_falling","color":"blue","italic":false}'}
execute if score id temp matches 29 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.conduit_power","color":"blue","italic":false}'}
execute if score id temp matches 30 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.dolphins_grace","color":"blue","italic":false}'}
execute if score id temp matches 31 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.bad_omen","color":"red","italic":false}'}
execute if score id temp matches 32 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.hero_of_the_village","color":"blue","italic":false}'}
execute if score id temp matches 33 run data merge block 7777 79 7777 {Text1:'{"translate":"effect.minecraft.darkness","color":"red","italic":false}'}

execute if score potency temp matches 0 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.0","italic":false}'}
execute if score potency temp matches 1 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.1","italic":false}'}
execute if score potency temp matches 2 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.2","italic":false}'}
execute if score potency temp matches 3 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.3","italic":false}'}
execute if score potency temp matches 4 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.4","italic":false}'}
execute if score potency temp matches 5 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.5","italic":false}'}
execute if score potency temp matches 6 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.6","italic":false}'}
execute if score potency temp matches 7 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.7","italic":false}'}
execute if score potency temp matches 8 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.8","italic":false}'}
execute if score potency temp matches 9 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.9","italic":false}'}
execute if score potency temp matches 10 run data merge block 7777 79 7777 {Text2:'{"translate":"potion.potency.10","italic":false}'}


#duration, ug
scoreboard players operation duration temp /= 20 numbers
scoreboard players operation duration2 temp = duration temp
scoreboard players operation duration2 temp /= 60 numbers
scoreboard players operation duration2 temp *= 60 numbers
scoreboard players operation duration temp -= duration2 temp
scoreboard players operation duration2 temp /= 60 numbers

#Combine, different possibilities for seconds vs normal and amplifier of 0 which breaks annoyingly
execute unless score potency temp matches 1.. if score duration2 temp matches 1.. run data merge block 7777 79 7777 {Text3:'[{"text":"("},{"score":{"name":"duration2","objective":"temp"}},{"text":":"},{"score":{"name":"duration","objective":"temp"}},{"text":")"}]'}
execute unless score potency temp matches 1.. unless score duration2 temp matches 1.. run data merge block 7777 79 7777 {Text3:'[{"text":"("},{"score":{"name":"duration","objective":"temp"}},{"translate":"s","italic":false},{"text":")"}]'}
execute if score potency temp matches 1.. if score duration2 temp matches 1.. run data merge block 7777 79 7777 {Text3:'[{"text":" ("},{"score":{"name":"duration2","objective":"temp"}},{"text":":"},{"score":{"name":"duration","objective":"temp"}},{"text":")"}]'}
execute if score potency temp matches 1.. unless score duration2 temp matches 1.. run data merge block 7777 79 7777 {Text3:'[{"text":" ("},{"score":{"name":"duration","objective":"temp"}},{"translate":"s","italic":false},{"text":")"}]'}

#Pull all into 1
execute if score id temp matches 1.. run setblock 7777 77 7777 oak_sign{Text1:'[{"nbt":"Text1","block":"7777 79 7777","interpret":true},{"text":" "},{"nbt":"Text2","block":"7777 79 7777","interpret":true},{"nbt":"Text3","block":"7777 79 7777","interpret":true}]'}