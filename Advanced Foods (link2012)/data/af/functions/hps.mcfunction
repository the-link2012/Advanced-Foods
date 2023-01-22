#updates the hp
execute if score hp temp matches 2 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 4 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 6 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 8 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 10 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 12 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 14 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 16 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 18 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 20.. run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤❤❤❤","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 1 run data modify storage af:food Item.tag.display.Lore append value '{"text":"⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 3 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 5 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 7 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 9 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 11 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 13 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 15 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 17 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤❤⏷","color":"#CF1F1F","italic":false}'
execute if score hp temp matches 19 run data modify storage af:food Item.tag.display.Lore append value '{"text":"❤❤❤❤❤❤❤❤❤⏷","color":"#CF1F1F","italic":false}'

execute if score hp temp matches 1.. run scoreboard players remove hp temp 20
execute if score hp temp matches 1.. run function af:hps