What is this?

This datapack allows you to cook food on campfires similar to BOTW. It also allows food to
have special effects other than healing. To use this pack, ensure natural regen is disabled.
It is also best to ensure players are always a bit hungry so they can eat. 

Making custom food:
Food items should have an extra nbt added to them that tells the game what effect to give them.
This is done by taking the nbt of an AOE cloud and adding it to the item itself. 

Example:
Your AOE cloud might look like this
/summon area_effect_cloud ~ ~ ~ {Effects:[{Id:1,Amplifier:1b,Duration:20,ShowParticles:0b}]}
So your food item would look like this:
/give @p potato{Effects:[{Id:1,Amplifier:1b,Duration:20,ShowParticles:0b}]} 1
*Only effects from the AOE cloud are inherited, if you want to make tweaks, feel free to mess with 
the datapack. 

Campfires and cooking:
Stand over a campfire in creative to register it to be used as a cooking location.
*Deleted campfires will unregister themselves IF you are in creative.
Let players know about the system in your world. For now, I have not added an opion for teaching.

Items can only be cooked once. Cooked items have the nbt {Cooked:1b}, Add this nbt to any item you
wish not to be cookable.

Normally, up to 4 items can be cooked at once. Cooking adds and doubles the duration of any AOE
clouds from the ingredients. 

Custom Textures:
Cooking a single item will set the CustomModelData to 1 on the cooked food. 
Cooking multiple items results in a "meal", this is rabbit stew. The CustomModelData of the stew
is set to the highest CustomModelData of the ingredients. 

Calls:
To apply lore to an item, put it into storage at af:food Item, then run the function <>. Your
items lore has been applied to the storage. 
You may use the function <> to just do this to item you are currently holding.

Configuration/optimizaiton:
Feel free to move the entity and player ticking to your own datapack, order shouldn't change anything.
The campfire entity runs on 5hz, player ticking runs on 20hz. (The most expensive thing is pulling mainhand
data every tick for food system, if you already do this, consider replacing the storage path this pack uses). 