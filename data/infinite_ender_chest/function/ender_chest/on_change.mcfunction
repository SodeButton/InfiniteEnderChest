# << execute as @a at @s >> tick >> 

scoreboard players operation #next InfiniteEnderChest.Page = @s InfiniteEnderChest.Page
scoreboard players add #next InfiniteEnderChest.Page 1
scoreboard players operation #next2 InfiniteEnderChest.Page = @s InfiniteEnderChest.Page
scoreboard players add #next2 InfiniteEnderChest.Page 2
scoreboard players operation #previous InfiniteEnderChest.Page = @s InfiniteEnderChest.Page
scoreboard players remove #previous InfiniteEnderChest.Page 1
scoreboard players operation #previous2 InfiniteEnderChest.Page = @s InfiniteEnderChest.Page
scoreboard players remove #previous2 InfiniteEnderChest.Page 2

execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_current_page int 1.0 run scoreboard players get @s InfiniteEnderChest.Page
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_next_page int 1.0 run scoreboard players get #next InfiniteEnderChest.Page
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_next2_page int 1.0 run scoreboard players get #next2 InfiniteEnderChest.Page
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_previous_page int 1.0 run scoreboard players get #previous InfiniteEnderChest.Page
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_previous2_page int 1.0 run scoreboard players get #previous2 InfiniteEnderChest.Page
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_max_page int 1.0 run scoreboard players get @s InfiniteEnderChest.MaxPage

function infinite_ender_chest:ender_chest/change_page with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
