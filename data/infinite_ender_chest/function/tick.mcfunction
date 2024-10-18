## 常時実行

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item":{}}}}}] run data modify entity @s PickupDelay set value 32767
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item":{}}}}}] run data modify entity @s Age set value 6000
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item":{}}}}}] run data modify entity @s Item.components."minecraft:custom_data" append value {"InfiniteEnderChest.GUI.IsDrop": true}

# プレイヤーのtick
  execute as @a at @s run function infinite_ender_chest:player/tick

clear @a *[minecraft:custom_data~{"InfiniteEnderChest.GUI.Item":{}}]