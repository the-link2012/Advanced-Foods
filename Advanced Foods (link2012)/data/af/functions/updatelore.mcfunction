#Updates the lore of the item in question in storage af:food Item

#Make a bunch of gibberish
data modify storage af:food Item.tag.display.Lore set value ['{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}','{"translate":" "}']

#Cooked or ingredient?
execute if data storage af:food {Item:{tag:{Cooked:1b}}} run data modify storage af:food Item.tag.display.Lore[0] set value '{"translate":"Cooked","color":"gold","bold":false,"italic":false}'
execute unless data storage af:food {Item:{tag:{Cooked:1b}}} run data modify storage af:food Item.tag.display.Lore[0] set value '{"translate":"Ingredient","color":"gray","bold":false,"italic":false}'



#Effects
data modify storage af:food Potion set from storage af:food Item.tag.Effects[0]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[2] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[1]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[3] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[2]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[4] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[3]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[5] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[4]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[6] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[5]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[7] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[6]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[8] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[7]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[9] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[8]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[10] set from block 7777 77 7777 Text1
data modify storage af:food Potion set from storage af:food Item.tag.Effects[9]
function af:potionsign
data modify storage af:food Potion set value {}
data modify storage af:food Item.tag.display.Lore[11] set from block 7777 77 7777 Text1

#Remove stuff
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[14]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[14]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[13]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[13]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[12]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[12]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[11]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[11]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[10]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[10]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[9]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[9]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[8]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[8]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[7]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[7]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[6]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[6]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[5]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[5]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[4]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[4]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[3]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[3]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[2]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[2]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[1]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[1]
data modify storage af:food Lore set from storage af:food Item.tag.display.Lore[0]
execute if data storage af:food {Lore:'{"translate":" "}'} run data remove storage af:food Item.tag.display.Lore[0]

#HP! ❤⏷
scoreboard players set hp temp 0
execute store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:5b}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:6b}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:7b}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:8b}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:9b}].Duration
execute if score hp temp matches 0 store result score hp temp run data get storage af:food Item.tag.Effects[{Id:10,Amplifier:10b}].Duration
function af:hps