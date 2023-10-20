#Updates a sign's text at 7777 77 7777 to match the option effects of the mainhand lore
scoreboard players set potency temp 0
scoreboard players set duration temp 0
scoreboard players set id temp 0

#get values
execute store result score potency temp run data get storage af:food Potion.amplifier
execute store result score duration temp run data get storage af:food Potion.duration
execute if data storage af:food Potion{id:"minecraft:speed"} run scoreboard players set id temp 1
execute if data storage af:food Potion{id:"minecraft:slowness"} run scoreboard players set id temp 2
execute if data storage af:food Potion{id:"minecraft:haste"} run scoreboard players set id temp 3
execute if data storage af:food Potion{id:"minecraft:mining_fatigue"} run scoreboard players set id temp 4
execute if data storage af:food Potion{id:"minecraft:strength"} run scoreboard players set id temp 5
execute if data storage af:food Potion{id:"minecraft:instant_health"} run scoreboard players set id temp 6
execute if data storage af:food Potion{id:"minecraft:instant_damage"} run scoreboard players set id temp 7
execute if data storage af:food Potion{id:"minecraft:jump_boost"} run scoreboard players set id temp 8
execute if data storage af:food Potion{id:"minecraft:nausea"} run scoreboard players set id temp 9
execute if data storage af:food Potion{id:"minecraft:regeneration"} run scoreboard players set id temp 10
execute if data storage af:food Potion{id:"minecraft:resistance"} run scoreboard players set id temp 11
execute if data storage af:food Potion{id:"minecraft:fire_resistance"} run scoreboard players set id temp 12
execute if data storage af:food Potion{id:"minecraft:water_breathing"} run scoreboard players set id temp 13
execute if data storage af:food Potion{id:"minecraft:invisibility"} run scoreboard players set id temp 14
execute if data storage af:food Potion{id:"minecraft:blindness"} run scoreboard players set id temp 15
execute if data storage af:food Potion{id:"minecraft:night_vision"} run scoreboard players set id temp 16
execute if data storage af:food Potion{id:"minecraft:hunger"} run scoreboard players set id temp 17
execute if data storage af:food Potion{id:"minecraft:weakness"} run scoreboard players set id temp 18
execute if data storage af:food Potion{id:"minecraft:poison"} run scoreboard players set id temp 19
execute if data storage af:food Potion{id:"minecraft:wither"} run scoreboard players set id temp 20
execute if data storage af:food Potion{id:"minecraft:health_boost"} run scoreboard players set id temp 21
execute if data storage af:food Potion{id:"minecraft:absorption"} run scoreboard players set id temp 22
execute if data storage af:food Potion{id:"minecraft:saturation"} run scoreboard players set id temp 23
execute if data storage af:food Potion{id:"minecraft:glowing"} run scoreboard players set id temp 24
execute if data storage af:food Potion{id:"minecraft:levitation"} run scoreboard players set id temp 25
execute if data storage af:food Potion{id:"minecraft:luck"} run scoreboard players set id temp 26
execute if data storage af:food Potion{id:"minecraft:unluck"} run scoreboard players set id temp 27
execute if data storage af:food Potion{id:"minecraft:slow_falling"} run scoreboard players set id temp 28
execute if data storage af:food Potion{id:"minecraft:conduit_power"} run scoreboard players set id temp 29
execute if data storage af:food Potion{id:"minecraft:dolphins_grace"} run scoreboard players set id temp 30
execute if data storage af:food Potion{id:"minecraft:bad_omen"} run scoreboard players set id temp 31
execute if data storage af:food Potion{id:"minecraft:hero_of_the_village"} run scoreboard players set id temp 32
execute if data storage af:food Potion{id:"minecraft:darkness"} run scoreboard players set id temp 33

#Ignore regen
execute if score id temp matches 10 if score potency temp matches 5.. run scoreboard players set duration temp 0
execute if score id temp matches 10 if score potency temp matches 5.. run scoreboard players set potency temp 0
execute if score id temp matches 10 if score potency temp matches 0 if score duration temp matches 0 run scoreboard players set id temp 0

#update blocks
setblock 7777 77 7777 air
setblock 7777 79 7777 air
setblock 7777 79 7777 oak_sign 

#Set relevant text before combining
execute if score id temp matches 1 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.speed","color":"blue","italic":false}'
execute if score id temp matches 2 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.slowness","color":"red","italic":false}'
execute if score id temp matches 3 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.haste","color":"blue","italic":false}'
execute if score id temp matches 4 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.mining_fatigue","color":"red","italic":false}'
execute if score id temp matches 5 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.strength","color":"blue","italic":false}'
execute if score id temp matches 6 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.instant_health","color":"blue","italic":false}'
execute if score id temp matches 7 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.instant_damage","color":"red","italic":false}'
execute if score id temp matches 8 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.jump_boost","color":"blue","italic":false}'
execute if score id temp matches 9 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.nausea","color":"red","italic":false}'
execute if score id temp matches 10 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.regeneration","color":"blue","italic":false}'
execute if score id temp matches 11 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.resistance","color":"blue","italic":false}'
execute if score id temp matches 12 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.fire_resistance","color":"blue","italic":false}'
execute if score id temp matches 13 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.water_breathing","color":"blue","italic":false}'
execute if score id temp matches 14 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.invisibility","color":"blue","italic":false}'
execute if score id temp matches 15 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.blindness","color":"red","italic":false}'
execute if score id temp matches 16 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.night_vision","color":"blue","italic":false}'
execute if score id temp matches 17 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.hunger","color":"red","italic":false}'
execute if score id temp matches 18 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.weakness","color":"red","italic":false}'
execute if score id temp matches 19 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.poison","color":"red","italic":false}'
execute if score id temp matches 20 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.wither","color":"red","italic":false}'
execute if score id temp matches 21 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.health_boost","color":"blue","italic":false}'
execute if score id temp matches 22 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.absorption","color":"blue","italic":false}'
execute if score id temp matches 23 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.saturation","color":"blue","italic":false}'
execute if score id temp matches 24 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.glowing","color":"blue","italic":false}'
execute if score id temp matches 25 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.levitation","color":"blue","italic":false}'
execute if score id temp matches 26 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.luck","color":"blue","italic":false}'
execute if score id temp matches 27 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.unluck","color":"red","italic":false}'
execute if score id temp matches 28 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.slow_falling","color":"blue","italic":false}'
execute if score id temp matches 29 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.conduit_power","color":"blue","italic":false}'
execute if score id temp matches 30 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.dolphins_grace","color":"blue","italic":false}'
execute if score id temp matches 31 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.bad_omen","color":"red","italic":false}'
execute if score id temp matches 32 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.hero_of_the_village","color":"blue","italic":false}'
execute if score id temp matches 33 run data modify block 7777 79 7777 front_text.messages[0] set value '{"translate":"effect.minecraft.darkness","color":"red","italic":false}'

execute if score potency temp matches 0 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.0","italic":false}'
execute if score potency temp matches 1 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.1","italic":false}'
execute if score potency temp matches 2 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.2","italic":false}'
execute if score potency temp matches 3 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.3","italic":false}'
execute if score potency temp matches 4 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.4","italic":false}'
execute if score potency temp matches 5 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.5","italic":false}'
execute if score potency temp matches 6 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.6","italic":false}'
execute if score potency temp matches 7 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.7","italic":false}'
execute if score potency temp matches 8 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.8","italic":false}'
execute if score potency temp matches 9 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.9","italic":false}'
execute if score potency temp matches 10 run data modify block 7777 79 7777 front_text.messages[1] set value '{"translate":"potion.potency.10","italic":false}'


#duration, ug
scoreboard players operation duration temp /= 20 numbers
scoreboard players operation duration2 temp = duration temp
scoreboard players operation duration2 temp /= 60 numbers
scoreboard players operation duration2 temp *= 60 numbers
scoreboard players operation duration temp -= duration2 temp
scoreboard players operation duration2 temp /= 60 numbers

#Combine, different possibilities for seconds vs normal and amplifier of 0 which breaks annoyingly
execute unless score potency temp matches 1.. if score duration2 temp matches 1.. run data modify block 7777 79 7777 front_text.messages[2] set value '[{"text":"("},{"score":{"name":"duration2","objective":"temp"}},{"text":":"},{"score":{"name":"duration","objective":"temp"}},{"text":")"}]'
execute unless score potency temp matches 1.. unless score duration2 temp matches 1.. run data modify block 7777 79 7777 front_text.messages[2] set value '[{"text":"("},{"score":{"name":"duration","objective":"temp"}},{"translate":"s","italic":false},{"text":")"}]'
execute if score potency temp matches 1.. if score duration2 temp matches 1.. run data modify block 7777 79 7777 front_text.messages[2] set value '[{"text":" ("},{"score":{"name":"duration2","objective":"temp"}},{"text":":"},{"score":{"name":"duration","objective":"temp"}},{"text":")"}]'
execute if score potency temp matches 1.. unless score duration2 temp matches 1.. run data modify block 7777 79 7777 front_text.messages[2] set value '[{"text":" ("},{"score":{"name":"duration","objective":"temp"}},{"translate":"s","italic":false},{"text":")"}]'

#Pull all into 1
execute if score id temp matches 1.. run setblock 7777 77 7777 oak_sign{front_text:{messages:['[{"nbt":"front_text.messages[0]","block":"7777 79 7777","interpret":true},{"text":" "},{"nbt":"front_text.messages[1]","block":"7777 79 7777","interpret":true},{"nbt":"front_text.messages[2]","block":"7777 79 7777","interpret":true}]','{"text":""}','{"text":""}','{"text":""}']}}