#Player Ticking, 20hz




#Registering
execute if score 5hz afloop matches 2 if block ~ ~ ~ campfire unless entity @e[distance=..2,type=marker,tag=af.campfire] run say Registered this campfire
execute if score 5hz afloop matches 2 if block ~ ~ ~ campfire unless entity @e[distance=..2,type=marker,tag=af.campfire] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["af.campfire"],CustomName:'{"text":"Campfire"}'}