
# スコアの定義
scoreboard objectives add InfiniteEnderChest.Page dummy
scoreboard objectives add InfiniteEnderChest.MaxPage dummy
scoreboard objectives add InfiniteEnderChest.Temp dummy
scoreboard objectives add InfiniteEnderChest.LeaveGame minecraft.custom:minecraft.leave_game

execute as @a[tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text":"[InfiniteEnderChest]","color":"gold"},{"text":" この機能を利用するには、","color":"white"},{"text":"[こちら]","color":"aqua","clickEvent": {"action":  "run_command", "value": "/function infinite_ender_chest:player/setup"}, "hoverEvent": {"action": "show_text","contents": {"text": "有効にする"}}},{"text":" をクリックしてください。","color":"white"}]
execute as @a[tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text": "注意：この機能を利用すると、エンダーチェストの右端のスロットが消えます。","color": "red"}]