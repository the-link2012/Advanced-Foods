#Cooks multiple items

#Clear storage to start
data modify storage af:food Item set value {}
data modify storage af:food Item.tag.effects set value []
scoreboard players set maxmodeldata temp 0

#Add in all the items
scoreboard players set itemchecked temp 0
execute positioned ~-1 ~-1 ~-1 as @e[dx=2,dy=10,dz=2,type=item,tag=tobecooked] at @s run function af:cooking/cookasitem

#Update lore
data modify storage af:food Item.tag.Cooked set value 1b
function af:updatelore

#Merge data, add cooked tag, etc.
data modify storage af:food Item.Count set value 1b
data modify storage af:food Item.id set value "minecraft:rabbit_stew"
data modify storage af:food Item.tag.Cooked set value 1b
data modify storage af:food Item.tag.display.Name set value '{"translate":"Meal","color":"white","bold":false,"italic":false}'
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item set from storage af:food Item


#CustomModeldata
execute store result entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item.tag.CustomModelData byte 1 run scoreboard players add maxmodeldata temp 0
