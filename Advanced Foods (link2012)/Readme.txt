What is this?

This datapack allows you to cook food on campfires similar to BOTW. It also allows food to
have special effects other than healing. To use this pack, ensure natural regen is disabled.
It is also best to ensure players are always a bit hungry so they can eat. 

Making custom food:
Food items should have an extra nbt added to them that tells the game what effect to give them.
This is done by taking the nbt of an AOE cloud and adding it to the item itself. 

Example:
Your AOE cloud might look like this
/summon area_effect_cloud ~ ~ ~ {effects:[{id:"minecraft:speed",amplifier:1b,duration:200,show_particles:0b}]}
So your food item would look like this:
/give @p potato{effects:[{id:"minecraft:speed",amplifier:1b,duration:200,show_particles:0b}]} 1
*Only effects from the AOE cloud are inherited, if you want to make tweaks, feel free to mess with 
the datapack. 

Your ingredient(s) don't have to be edible, they may be any item.

Campfires and cooking:
Stand over a campfire in creative to register it to be used as a cooking location.
*Deleted campfires will unregister themselves IF you are in creative (players may replace them at the exact same spot)
Let players know about the system in your world. For now, I have not added an option for teaching.
Basically, throw up to 4 pieces of food on a fire. Click to cook when ready. Resulting meal doubles 
base stats of the ingredient(s)

Items can only be cooked once. Cooked items have the nbt {Cooked:1b}, add this nbt to any item you
wish not to be cookable.

Normally, up to 4 items can be cooked at once. Cooking adds and doubles the duration of any AOE
clouds from the ingredients. 

Custom Textures:
Cooking a single item will set the CustomModelData to 100 on the cooked food. 
Cooking multiple items results in a "meal", this is rabbit stew. The CustomModelData of the stew
is set to the highest CustomModelData of the ingredients. Meals don't stack. 

HEALING 
Since this system uses aoe clouds, I would use regen for healing. High level regen won't overwrite lower levels
now with the recent changes, so it won't generally overshadow any existing regen items/potions. Regen 6 (aplifier 5)
regens 1 hp/tick, so consider using that with particles off. 
USING REGEN 6+ FOR HEALING PUTS CUSTOM LORE ON THE ITEM ACCORDINGLY

Calls:
To apply lore to an item, put it into storage at af:food Item, then run the function /function af:updatelore. Your
items lore has been applied to the storage. 
You may use the function /function af:updatehand to just do this to item you are currently holding.
PAINFULLY (for me), this ALL uses translate. So yea, you are welcome <3

Configuration/optimizaiton:
Feel free to move the entity and player ticking to your own datapack, order shouldn't change anything.
The campfire entity runs on 5hz, player ticking runs on 20hz. The whole thing is... surprisingly
optimized and cheap as is. 

Options may be viewed in the scoreboard af.options
items = max # of items that may be cooked together
multiplier_single = %multiplier to give when cooking a single piece of food (default 199/199%)
multiplier_meal = %multiplier to give when cooking a meal (default 249/249%)

Bugs and maxes:
If 2 players finish eating food on the same tick, they will both get the same effect as one of the two
players (random).
If you have two different regen potencies at or above 10 (i.e. 10 and 13) on a single cooked item, the 
lore hearts won't load. Also, just, don't do that. Keep all potencies at 5 so they can combine! 
The multiplier option causes math inaccuracies at the tail of things, epsecially for low durations (healing). If you 
don't like this, change the multipliers in af:cooking/recursiveduration (1) and af:cooking/checkeffects (2) 
to not use option/dividers and instead use "*= 2 numbers"
You can only have up to 50 potion effect combinations on a single cooked item (boohoo I know)
Up to 13 status effects will show in the item lore. There is no limit on the hp recovery shown. https://i.imgur.com/VkFZ7iP.png
Max shown potion potency is 10. After 5, default en_us.json needs to be updated.