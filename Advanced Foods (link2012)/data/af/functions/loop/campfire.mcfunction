#campfire ticking, 5hz. Runs on all campfires.


#deleting campfires (unregistering)
execute unless block ~ ~ ~ campfire as @a[distance=..10,gamemode=creative] run say Unregistered this campfire
execute unless block ~ ~ ~ campfire if entity @a[distance=..10,gamemode=creative] run kill @s