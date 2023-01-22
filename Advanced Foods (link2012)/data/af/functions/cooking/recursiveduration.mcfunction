#adds duration n stuff for single items
scoreboard players set duration temp 0
execute store result score duration temp run data get storage af:food Item2.tag.Effects[0].Duration 1

#Multiply duration
scoreboard players operation duration temp *= multiplier af.options
scoreboard players operation duration temp /= 100 numbers

#White it back in
execute store result storage af:food Item2.tag.Effects[0].Duration long 1 run scoreboard players add duration temp 1
data modify storage af:food Item.tag.Effects append from storage af:food Item2.tag.Effects[0]
data remove storage af:food Item2.tag.Effects[0]

#repeat
scoreboard players remove array temp 1
execute if score array temp matches 1.. run function af:cooking/recursiveduration
