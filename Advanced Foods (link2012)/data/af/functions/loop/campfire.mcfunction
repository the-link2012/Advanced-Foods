#campfire ticking, 5hz. Runs on all campfires.

#activation
execute if entity @s[tag=!cooking,tag=!active] if block ~ ~ ~ campfire if entity @e[distance=..0.5,type=item,limit=1,tag=!cooked,nbt=!{Item:{tag:{Cooked:1b}}},nbt={Item:{tag:{Effects:[{}]}}}] run function af:cooking/activate
execute if entity @s[tag=!cooking,tag=active] unless entity @e[distance=..0.5,type=item,limit=1,tag=!cooked,nbt=!{Item:{tag:{Cooked:1b}}},nbt={Item:{tag:{Effects:[{}]}}}] run function af:cooking/deactivate
execute if entity @s[tag=active] run function af:cooking/active

#cooking
execute if entity @s[tag=cooking] run function af:cooking/cooking

#deleting campfires (unregistering)
execute unless block ~ ~ ~ campfire as @a[distance=..10,gamemode=creative] run say Unregistered this campfire
execute unless block ~ ~ ~ campfire if entity @a[distance=..10,gamemode=creative] run kill @s

#particles
#execute if entity @s[tag=!active] run particle minecraft:lava ~ ~ ~