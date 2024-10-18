
# おねがい！Oh My Dat!
  function #oh_my_dat:please

# エンダーチェストの中身をストレージに保存
  data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_current set from entity @s EnderItems

# 置き換えれたら インベントリが変更されたとき、 置きかえれなかったら インベントリが変更されていない
  execute store result score #bool InfiniteEnderChest.Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_previous set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_current

# インベントリが変更されたとき
  execute if score #bool InfiniteEnderChest.Temp matches 1 run function infinite_ender_chest:ender_chest/on_change

# リセット
  data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_current
  scoreboard players reset #bool InfiniteEnderChest.Temp

