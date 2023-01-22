#Activates the campfire if there is any item above it (tag and sheep)
tag @s remove active
execute as @e[distance=..33,limit=1,sort=nearest,type=sheep,tag=af.campfiresheep] run data merge entity @s {Silent:1b,DeathTime:18,DeathLootTable:"empty",AbsorptionAmount:0f,Health:0f,Pos:[7777.0d,-9999.0d,7777.0d]}
scoreboard players reset @s af.activetime
kill @e[distance=..5,type=armor_stand,tag=af.display]