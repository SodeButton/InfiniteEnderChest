## プレイヤーの常時実行
# execute as @a at @s >> 

execute as @a[scores={InfiniteEnderChest.LeaveGame = 1..},tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text":"[InfiniteEnderChest]","color":"gold"},{"text":" この機能を利用するには、","color":"white"},{"text":"[こちら]","color":"aqua","clickEvent": {"action":  "run_command", "value": "/function infinite_ender_chest:player/setup"}, "hoverEvent": {"action": "show_text","contents": {"text": "有効にする"}}},{"text":" をクリックしてください。","color":"white"}]
execute as @a[scores={InfiniteEnderChest.LeaveGame = 1..},tag=!InfiniteEnderChest.Enable] run tellraw @s [{"text": "注意：この機能を利用すると、エンダーチェストの右端のスロットが消えます。","color": "red"}]
execute as @a[scores={InfiniteEnderChest.LeaveGame = 1..}] run scoreboard players set @s InfiniteEnderChest.LeaveGame 0

execute as @a[tag=InfiniteEnderChest.Enable] run function infinite_ender_chest:ender_chest/tick