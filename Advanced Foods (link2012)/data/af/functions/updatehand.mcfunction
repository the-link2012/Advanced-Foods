#Updates the lore of the item in your hand
data modify storage af:food Item set from entity @s SelectedItem
function af:updatelore
data modify block 7777 76 7777 Items append value {Slot:0b,id:"minecraft:stone",Count:1b}
data modify block 7777 76 7777 Items[0] set from storage af:food Item
item replace entity @s weapon.mainhand from block 7777 76 7777 container.0