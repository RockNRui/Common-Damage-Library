#If a player is needed to heal a threshhold of health, heal that amount of remove that amount from their score
execute if score @s cdl.Heal_Queue matches 128.. run function cd:func/player_heal/heal_amount/128
execute if score @s cdl.Heal_Queue matches 64.. run function cd:func/player_heal/heal_amount/64
execute if score @s cdl.Heal_Queue matches 32.. run function cd:func/player_heal/heal_amount/32
execute if score @s cdl.Heal_Queue matches 16.. run function cd:func/player_heal/heal_amount/16
execute if score @s cdl.Heal_Queue matches 8.. run function cd:func/player_heal/heal_amount/8
execute if score @s cdl.Heal_Queue matches 4.. run function cd:func/player_heal/heal_amount/4
execute if score @s cdl.Heal_Queue matches 2.. run function cd:func/player_heal/heal_amount/2
execute if score @s cdl.Heal_Queue matches 1 run function cd:func/player_heal/heal_amount/1
#Then, loop the function if they have health needed healing remaining
execute if score @s cdl.Heal_Queue matches 1.. run function cd:func/player_heal/main
#Reset score when it reaches 0
execute if score @s cdl.Heal_Queue matches 0 run scoreboard players reset @s cdl.Heal_Queue