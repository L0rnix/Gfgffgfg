execute unless data storage gallab:data update[0].tag.CustomModelData run data remove storage gallab:data update[0]
execute if data storage gallab:data update[0] unless data storage gallab:data update[0].tag.CustomModelData run function gallab:update/del_empty