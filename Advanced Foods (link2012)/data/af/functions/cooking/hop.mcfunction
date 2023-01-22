#Makes one of the items "hop"
execute unless entity @e[distance=..0.5,tag=tobecooked,tag=!hopped] run tag @e[distance=..0.5,tag=tobecooked] remove hopped

data merge entity @e[distance=..0.5,tag=tobecooked,tag=!hopped,limit=1,sort=nearest,nbt={OnGround:1b}] {Motion:[0.0,0.4,0.0]}
tag @e[distance=..0.5,tag=tobecooked,tag=!hopped,limit=1,sort=nearest,nbt={OnGround:1b}] add hopped