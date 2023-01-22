#Activates the campfire if there is any item above it (tag and sheep)
tag @s add active
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~
summon sheep ~ ~-20 ~ {NoGravity:1b,DeathLootTable:"empty",Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["af.campfiresheep"],ActiveEffects:[{Id:10,Amplifier:10b,Duration:100000,ShowParticles:0b},{Id:11,Amplifier:3b,Duration:100000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}

#display
summon armor_stand ~ ~0.55 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"Click to","color":"yellow","bold":false,"italic":false}',Tags:["af.display"]}
summon armor_stand ~ ~0.25 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,CustomName:'{"translate":"cook","color":"yellow","bold":false,"italic":false}',Tags:["af.display"]}
