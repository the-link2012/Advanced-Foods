#20hz when the campfire is activated (this is nott the same as cooking)

#sheep and sheep alignment
scoreboard players add @s af.activetime 1
execute as @s[scores={af.activetime=2}] positioned ~ ~-20 ~ run tp @e[distance=..3,type=sheep,tag=af.campfiresheep,limit=1] ~ ~20 ~
execute as @s[scores={af.activetime=2}] as @e[distance=..3,type=sheep,tag=af.campfiresheep,limit=1] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @s[scores={af.activetime=2}] as @e[distance=..3,type=sheep,tag=af.campfiresheep,limit=1] at @s run tp @s ~ ~ ~ ~90 ~

#particles
tp @s ~ ~ ~ ~20 ~
execute if block ~ ~ ~ campfire run particle flame ^ ^ ^0.8 0 0 0 0 1
execute if block ~ ~ ~ campfire run particle soul_fire_flame ^ ^ ^-0.8 0 0 0 0 1

#execute as @e[distance=..3,type=sheep,tag=af.campfiresheep,limit=1] at @s run particle flame ~ ~0.5 ~ 0.2 0.2 0.2 0 3 force