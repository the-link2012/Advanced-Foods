#what happens on nearest campfire when players hit the sheep
function af:cooking/deactivate
tag @s add cooking

#Add items to be cooked
scoreboard players set @s af.items 0
execute as @e[distance=..0.5,type=item,tag=!cooked,nbt=!{Item:{tag:{Cooked:1b}}},nbt={Item:{tag:{effects:[{}]}}}] at @s run function af:cooking/additem