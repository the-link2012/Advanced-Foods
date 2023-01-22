#The base function that does loops

#Add to timer
scoreboard players add 5hz afloop 1
scoreboard players add 10hz afloop 1
scoreboard players add 1hz afloop 1
scoreboard players add 10s afloop 1

#Based off timer, execute functions
function af:loop/20hz
execute if score 5hz afloop matches 4.. run function af:loop/5hz
execute if score 5hz afloop matches 4.. run scoreboard players set 5hz afloop 0
execute if score 10hz afloop matches 2.. run function af:loop/10hz
execute if score 10hz afloop matches 2.. run scoreboard players set 10hz afloop 0
execute if score 1hz afloop matches 20.. run function af:loop/1hz
execute if score 1hz afloop matches 20.. run scoreboard players set 1hz afloop 0
execute if score 10s afloop matches 200.. run function af:loop/10s
execute if score 10s afloop matches 200.. run scoreboard players set 10s afloop 0