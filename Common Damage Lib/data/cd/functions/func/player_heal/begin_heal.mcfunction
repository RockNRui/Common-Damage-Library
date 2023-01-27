#Store health to be healed
scoreboard players operation @s cdl.hth.amount = @s cdl.heal_queue
#Store current health
execute store result score @s cdl.hth.pre_hp run data get entity @s Health
#Get max health
execute store result score $hth.max_hp cdl.temp run attribute @s minecraft:generic.max_health get
#Cancel heal check if already at full health
execute if score @s cdl.hth.pre_hp = $hth.max_hp cdl.temp run scoreboard players set @s cdl.hth.amount 0

#Attempt heal
function cd:func/player_heal/main

#Reset score
scoreboard players reset @s cdl.heal_queue

schedule function cd:func/player_heal/check_healed/global 2t