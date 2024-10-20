tag @s add InfiniteEnderChest.Enable

scoreboard players set @s InfiniteEnderChest.Page 1
scoreboard players set @s InfiniteEnderChest.MaxPage 10

item replace entity @s enderchest.8 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, hide_tooltip={}] 1
item replace entity @s enderchest.17 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Placeholder"}}, hide_tooltip={}] 1
item replace entity @s enderchest.26 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Next"}}, item_name='{"text": "次のページ"}', lore=['{"text": "(1/10)","italic": false, "color": "gray"}']] 1
