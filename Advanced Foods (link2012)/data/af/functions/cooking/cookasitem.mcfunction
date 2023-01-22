#When multiple items are cooked, this runs as  *each* item being cooked

#Get count of item
execute store result score count temp run data get entity @s Item.Count

#Do the basic data stuff
data modify storage af:food Item2 set from entity @s Item
scoreboard players set temp temp 0
execute store result score temp temp run data get storage af:food Item2.tag.CustomModelData
execute if score temp temp > maxmodeldata temp run scoreboard players operation maxmodeldata temp = temp temp

#Run through each effect
execute if score itemchecked temp < items af.options if score count temp matches 1.. run function af:cooking/fullitem2

#Update core, count, and redo if needed
scoreboard players add itemchecked temp 1
execute store result entity @s Item.Count byte 1 run scoreboard players remove count temp 1

execute if score itemchecked temp < items af.options if score count temp matches 1.. run function af:cooking/cookasitem