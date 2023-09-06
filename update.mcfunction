scoreboard objectives add int dummy
data remove storage gallab:data update
data modify storage gallab:data update set from entity @s Inventory
tag @s add this
execute at @s summon bat run function gallab:update/set

tp @e[type=bat,tag=gallab.update] ~ -2112 ~ 
tag @s remove this