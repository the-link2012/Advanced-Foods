#Cooks this single item

#Move item to storage
data modify storage af:food Item set from entity @s Item
scoreboard players set array temp 0
execute store result score array temp if data storage af:food Item.tag.effects[]

#Double effects
data modify storage af:food Item2 set value {}
data modify storage af:food Item2 set from storage af:food Item
data modify storage af:food Item.tag.effects set value []
function af:cooking/recursiveduration

#Update lore
data modify storage af:food Item.tag.Cooked set value 1b
function af:updatelore

#Merge data, add cooked tag, etc.
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item set from storage af:food Item
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item.tag.Cooked set value 1b
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item.tag.CustomModelData set from storage af:food Item.tag.CustomModelData
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item.Count set value 1b
data modify entity @e[distance=..10,tag=cooked,tag=!fullycooked,limit=1,sort=nearest] Item.id set value "minecraft:honey_bottle"
