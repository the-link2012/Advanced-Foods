#what happens when cooking finishes

#basic
tag @s remove cooking
scoreboard players reset @s af.activetime
playsound minecraft:block.note_block.bell ambient @a ~ ~ ~ 1 1

#Actually cooking
summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Age:-32768,PickupDelay:0,Invulnerable:1b,Tags:["cooked"],Item:{id:"minecraft:stone",Count:1b}}
execute positioned ~ ~1 ~ run team join af.green @e[distance=..2,type=item,tag=cooked]
particle instant_effect ~ ~1.2 ~ 0.15 0.3 0.15 0.4 15 normal
#If 1 item
execute if entity @s[scores={af.items=1}] positioned ~-1 ~-1 ~-1 as @e[dx=2,dy=10,dz=2,type=item,tag=tobecooked,limit=1,sort=nearest] at @s run function af:cooking/cooksingle






#Lastly for failsafe
execute positioned ~ ~1 ~ run tag @e[distance=..2,type=item,tag=cooked] add fullycooked
 
#finish off/failsafe
execute positioned ~-1 ~-1 ~-1 as @e[dx=2,dy=10,dz=2,type=item,tag=tobecooked] run kill @s