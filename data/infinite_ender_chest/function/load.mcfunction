
# スコアの定義
scoreboard objectives add InfiniteEnderChest.Page dummy
scoreboard objectives add InfiniteEnderChest.Temp dummy
scoreboard objectives add InfiniteEnderChest.LeaveGame minecraft.custom:minecraft.leave_game

execute as @a[tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text":"[InfiniteEnderChest]","color":"gold"},{"text":" この機能を利用するには、","color":"white"},{"text":"[こちら]","color":"aqua","clickEvent": {"action":  "run_command", "value": "/tag @s add InfiniteEnderChest.Enable"}, "hoverEvent": {"action": "show_text","contents": {"text": "有効にする"}}},{"text":" をクリックしてください。","color":"white"}]
execute as @a[tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text": "注意：この機能を利用すると、エンダーチェストの右上と右下のスロットが消えます。","color": "red"}]

execute as @a[tag=InfiniteEnderChest.Enable] run scoreboard players set @s InfiniteEnderChest.Page 1

execute as @a[tag=InfiniteEnderChest.Enable] run item replace entity @s enderchest.8 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}', rarity="common"] 1
execute as @a[tag=InfiniteEnderChest.Enable] run item replace entity @s enderchest.17 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Placeholder"}}, item_name='{"text":"1ページ"}'] 1
execute as @a[tag=InfiniteEnderChest.Enable] run item replace entity @s enderchest.26 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Next"}}, item_name='{"text": "次のページ"}'] 1
