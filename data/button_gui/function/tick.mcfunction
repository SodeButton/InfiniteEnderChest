## 常時実行

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}] run data modify entity @s PickupDelay set value 32767
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}] run data modify entity @s Age set value 6000
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"Button.GUI.Item":{}}}}}] run data modify entity @s Item.components."minecraft:custom_data" append value {"Button.GUI.IsDrop": true}

# プレイヤーのtick
  execute as @a at @s run function button_gui:player/tick
# GUIのtick
  execute as @e[type=chest_minecart,tag=Button.GUI] at @s run function button_gui:gui/tick

clear @a *[minecraft:custom_data~{"Button.GUI.Item":{}}]