#This function runs on at the player that has eaten a custom food item

#Summon cloud
summon area_effect_cloud ~ ~1 ~ {Particle:"block air",ReapplicationDelay:0,Radius:1f,RadiusOnUse:-100f,Duration:6,DurationOnUse:-100f,WaitTime:0,Tags:["af.foodcloud"],effects:[]}

#Modify data of cloud
execute positioned ~ ~1 ~ run data modify entity @e[distance=..0.5,type=area_effect_cloud,tag=af.foodcloud,limit=1] effects set from storage af:item SelectedItem.tag.effects

#failsafe if player is moving
scoreboard players set @s tpcloud 6