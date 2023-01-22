#Full item 2 is in storage, time to take each piece of the array and apply it to the main item accordingly.

#First, we clone what we have
data modify storage af:food effects set value {}
data modify storage af:food effects set from storage af:food Item.tag.Effects
##execute store result score array temp if data storage af:food effects[]
scoreboard players set array temp 0

#recursively compare
function af:cooking/checkeffects

#Remove piece of the array
data remove storage af:food Item2.tag.Effects[0] 

#If cannot repeat, stop
execute if data storage af:food Item2.tag.Effects[0] run function af:cooking/fullitem2