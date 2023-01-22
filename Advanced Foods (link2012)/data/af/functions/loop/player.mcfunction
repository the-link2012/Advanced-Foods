#Player Ticking, 20hz

#hitting campfire
execute if entity @s[advancements={af:firehit=true}] as @e[distance=..20,type=marker,tag=af.campfire,limit=1,sort=nearest] at @s run function af:cooking/hitsheep
execute if entity @s[advancements={af:firehit=true}] run advancement revoke @s only af:firehit

#tp cloud failsafe
scoreboard players remove @s[scores={tpcloud=1..}] tpcloud 1
execute as @s[scores={tpcloud=0..}] run tp @e[distance=..20,type=area_effect_cloud,tag=af.foodcloud,limit=1,sort=nearest] @s
execute as @s[scores={tpcloud=0}] run scoreboard players reset @s tpcloud

#Oh, you have eaten a special thing? It is time to give you the aoe cloud!
execute if entity @s[advancements={af:ate=true}] run function af:playereats
execute if entity @s[advancements={af:ate=true}] run advancement revoke @s only af:ate

#If the player is eating, mark them for selecteditem. This ensures each player gets unique effects so long as the consumption tick doesn't match
#eating tag = pull selecteditem
execute as @s[advancements={af:eating=true}] unless entity @a[limit=1,tag=eating] run tag @s add eating
tag @s[advancements={af:eating=false},tag=eating] remove eating
advancement revoke @s[advancements={af:eating=true}] only af:eating
execute as @s[tag=eating] run data modify storage af:item SelectedItem set from entity @s SelectedItem

#Registering
execute if score 5hz afloop matches 2 if block ~ ~ ~ campfire unless entity @e[distance=..2,type=marker,tag=af.campfire] run say Registered this campfire
execute if score 5hz afloop matches 2 if block ~ ~ ~ campfire unless entity @e[distance=..2,type=marker,tag=af.campfire] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["af.campfire"],CustomName:'{"text":"Campfire"}'}