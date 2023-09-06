tag @s add gallab.update
function gallab:update/del_empty
execute unless data storage gallab:data update[0] run return 0
data modify entity @s HandItems[0] set from storage gallab:data update[0]
execute unless predicate gallab:update run function gallab:update/skip
execute store result score CMD int run data get storage gallab:data update[0].tag.CustomModelData
execute if score CMD int matches ..100 store result storage gallab:data update[0].tag.CustomModelData int 1 run scoreboard players add CMD int 70000
summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Tags:["regive"]}
data modify entity @e[type=item,tag=regive,distance=0,limit=1] Item set from storage gallab:data update[0]
tag @e[type=item,tag=regive,distance=0,limit=1] remove regive
execute store result score Slot int run data get storage gallab:data update[0].Slot

execute as @a[tag=this,limit=1] run function gallab:update/search

data remove storage gallab:data update[0]
function gallab:update/set