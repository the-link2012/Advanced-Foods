#as the campfire is cooking
scoreboard players add @s af.activetime 1

#animation
execute if entity @s[scores={af.activetime=1}] run playsound minecraft:entity.generic.eat ambient @a ~ ~ ~
execute if entity @s[scores={af.activetime=3}] run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={af.activetime=5}] run playsound minecraft:entity.generic.eat ambient @a ~ ~ ~
execute if entity @s[scores={af.activetime=7}] run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={af.activetime=9}] run playsound minecraft:entity.generic.eat ambient @a ~ ~ ~
execute if entity @s[scores={af.activetime=11}] run playsound minecraft:entity.item.pickup ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={af.activetime=1}] run function af:cooking/hop
execute if entity @s[scores={af.activetime=3,af.items=3..}] run function af:cooking/hop
execute if entity @s[scores={af.activetime=5}] run function af:cooking/hop
execute if entity @s[scores={af.activetime=7,af.items=3..}] run function af:cooking/hop
execute if entity @s[scores={af.activetime=9}] run function af:cooking/hop
execute if entity @s[scores={af.activetime=11,af.items=3..}] run function af:cooking/hop
#finish
execute if entity @s[scores={af.activetime=13}] run function af:cooking/cook