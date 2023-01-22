#Attempts to add this item to the list of items to be cooked
scoreboard players set temp temp 0
scoreboard players set success temp 0

execute if score @e[distance=..3,type=marker,limit=1,sort=nearest,tag=af.campfire] af.items < items af.options run scoreboard players set success temp 1

#If the item can be added
execute if score success temp matches 1.. store result score temp temp run data get entity @s Item.Count 1
execute if score success temp matches 1.. run scoreboard players operation @e[distance=..3,type=marker,limit=1,sort=nearest,tag=af.campfire] af.items += temp temp
execute if score success temp matches 1.. run data merge entity @s {HasVisualFire:1b,Glowing:1b,PickupDelay:80,Invulnerable:1b}
execute if score success temp matches 1.. run tag @s add tobecooked
scoreboard players set @s af.activetime 0
