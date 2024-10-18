# execute as @a at @s >> tick >> on_change >>

# アイテムがドロップしたときの処理
  execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {id:"GUI.Next"}}}}}] run item replace entity @s enderchest.26 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Next"}}, item_name='{"text": "次のページ"}'] 1
  execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {id:"GUI.Previous"}}}}}] run item replace entity @s enderchest.8 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Previous"}}, item_name='{"text": "前のページ"}'] 1
  execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {id:"GUI.Placeholder"}}}}}] run item replace entity @s enderchest.8 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Previous"}}, item_name='{"text": "前のページ"}'] 1
  execute if score @s InfiniteEnderChest.Page matches 4.. if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {id:"GUI.End"}}}}}] run item replace entity @s enderchest.26 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}'] 1
  execute if score @s InfiniteEnderChest.Page matches ..1 if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {id:"GUI.End"}}}}}] run item replace entity @s enderchest.8 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}'] 1
  kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"InfiniteEnderChest.GUI.Item": {}}}}}]

# 次のページをクリックしたか
  execute store success storage infinite_ender_chest:temp isClicked byte 1.0 run clear @s *[minecraft:custom_data~{"InfiniteEnderChest.GUI.Item": {id:"GUI.Next"}}]

  execute if data storage infinite_ender_chest:temp {isClicked:true} if items entity @s enderchest.26 *[!custom_data~{"InfiniteEnderChest.GUI.Item": {}}] run item replace entity @s player.cursor from entity @s enderchest.26

# 次のページをクリックしたらの処理
  ## 現在のページをストレージに保存
    $execute if data storage infinite_ender_chest:temp {isClicked:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_content_$(ender_chest_current_page) set from entity @s EnderItems

  ## 次のページの内容をチェストトロッコに挿入
    execute if data storage infinite_ender_chest:temp {isClicked:true} run summon chest_minecart ~ -66 ~ {Tags:["InfiniteEnderChest"], Invulnerable:1b, NoGravity:1b}
    $execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ as @e[type=chest_minecart,tag=InfiniteEnderChest,limit=1,sort=nearest] run data modify entity @s Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_content_$(ender_chest_next_page)

  ## 次のページをロード
    execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ run function infinite_ender_chest:ender_chest/load_to_storage

  ## チェストトロッコキル
    execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ run data remove entity @e[type=chest_minecart,tag=InfiniteEnderChest,sort=nearest,limit=1] Items
    execute if data storage infinite_ender_chest:temp {isClicked:true} run kill @e[type=chest_minecart,tag=InfiniteEnderChest]

  ## GUI設置
    execute if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.8 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Previous"}}, item_name='{"text": "前のページ"}'] 1

    $execute if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.17 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Placeholder"}}, item_name='{"text":"$(ender_chest_next_page)ページ"}'] 1

    execute if score @s InfiniteEnderChest.Page matches ..2 if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.26 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Next"}}, item_name='{"text": "次のページ"}'] 1
    execute if score @s InfiniteEnderChest.Page matches 3.. if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.26 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}', rarity="common"] 1

  ## ボタン押したときの効果音
    execute if data storage infinite_ender_chest:temp {isClicked:true} run playsound ui.button.click master @s

  ## スコア更新
    execute if data storage infinite_ender_chest:temp {isClicked:true} run scoreboard players add @s InfiniteEnderChest.Page 1


# 前のページをクリックしたか
  execute store success storage infinite_ender_chest:temp isClicked byte 1.0 run clear @s *[minecraft:custom_data~{"InfiniteEnderChest.GUI.Item": {id:"GUI.Previous"}}]
  
  execute if data storage infinite_ender_chest:temp {isClicked:true} if items entity @s enderchest.8 *[!custom_data~{"InfiniteEnderChest.GUI.Item": {}}] run item replace entity @s player.cursor from entity @s enderchest.8

# 前のページをクリックしたらの処理
  ## 現在のページをストレージに保存
    $execute if data storage infinite_ender_chest:temp {isClicked:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_content_$(ender_chest_current_page) set from entity @s EnderItems

  ## 前のページの内容をチェストトロッコに挿入
    execute if data storage infinite_ender_chest:temp {isClicked:true} run summon chest_minecart ~ -66 ~ {Tags:["InfiniteEnderChest"], Invulnerable:1b, NoGravity:1b}
    $execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ as @e[type=chest_minecart,tag=InfiniteEnderChest,limit=1,sort=nearest] run data modify entity @s Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ender_chest_content_$(ender_chest_previous_page)

  ## 前のページをロード
    execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ run function infinite_ender_chest:ender_chest/load_to_storage

  ## チェストトロッコキル
    execute if data storage infinite_ender_chest:temp {isClicked:true} positioned ~ -66 ~ run data remove entity @e[type=chest_minecart,tag=InfiniteEnderChest,sort=nearest,limit=1] Items
    execute if data storage infinite_ender_chest:temp {isClicked:true} run kill @e[type=chest_minecart,tag=InfiniteEnderChest]

  ## GUI設置
    execute if score @s InfiniteEnderChest.Page matches 3.. if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.8 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Previous"}}, item_name='{"text": "前のページ"}'] 1
    execute if score @s InfiniteEnderChest.Page matches ..2 if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.8 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}', rarity="common"] 1

    $execute if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.17 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Placeholder"}}, item_name='{"text":"$(ender_chest_previous_page)ページ"}'] 1

    execute if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.26 with arrow[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Next"}}, item_name='{"text": "次のページ"}'] 1

  ## ボタン押したときの効果音
    execute if data storage infinite_ender_chest:temp {isClicked:true} run playsound ui.button.click master @s
    
  ## スコア更新
    execute if data storage infinite_ender_chest:temp {isClicked:true} run scoreboard players remove @s InfiniteEnderChest.Page 1

# 何もないところをクリックしたか
  execute store success storage infinite_ender_chest:temp isClicked byte 1.0 run clear @s *[minecraft:custom_data~{"InfiniteEnderChest.GUI.Item": {id:"GUI.Placeholder"}}]

  execute if data storage infinite_ender_chest:temp {isClicked:true} if items entity @s enderchest.17 *[!custom_data~{"InfiniteEnderChest.GUI.Item": {}}] run item replace entity @s player.cursor from entity @s enderchest.17

# 何もないところをクリックしたらの処理
  ## ボタン押したときの効果音
    execute if data storage infinite_ender_chest:temp {isClicked:true} run playsound ui.button.click master @s

  ## GUI設置
    $execute if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.17 with black_stained_glass_pane[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.Placeholder"}}, item_name='{"text":"$(ender_chest_current_page)ページ"}'] 1
# エンドボタンをクリックしたか
  execute store success storage infinite_ender_chest:temp isClicked byte 1.0 run clear @s *[minecraft:custom_data~{"InfiniteEnderChest.GUI.Item": {id:"GUI.End"}}]

  execute if data storage infinite_ender_chest:temp {isClicked:true} if items entity @s enderchest.8 *[!custom_data~{"InfiniteEnderChest.GUI.Item": {}}] run item replace entity @s player.cursor from entity @s enderchest.8
  execute if data storage infinite_ender_chest:temp {isClicked:true} if items entity @s enderchest.26 *[!custom_data~{"InfiniteEnderChest.GUI.Item": {}}] run item replace entity @s player.cursor from entity @s enderchest.26

# エンドボタンをクリックしたらの処理
  ## ボタン押したときの効果音
    execute if data storage infinite_ender_chest:temp {isClicked:true} run playsound ui.button.click master @s

  ## GUI設置
    execute if score @s InfiniteEnderChest.Page matches ..1 if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.8 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}', rarity="common"] 1
    execute if score @s InfiniteEnderChest.Page matches 4.. if data storage infinite_ender_chest:temp {isClicked:true} run item replace entity @s enderchest.26 with barrier[custom_data={InfiniteEnderChest.GUI.Item: {id:"GUI.End"}}, item_name='{"text": "ここまで"}', rarity="common"] 1
