#Store post heal hp
execute store result score @s cdl.hth.post_hp run data get entity @s Health

#If health is greater, return good
#execute if score @s cdl.hth.post_hp > @s cdl.hth.pre_hp run not needed
#If health hasn't changed, return bad
execute unless score @s cdl.hth.post_hp > @s cdl.hth.pre_hp run tellraw @s ["",{"text":"Error ","italic":true,"color":"#F22C2C"},{"text":"[?]","italic":true,"color":"#D9A745","hoverEvent":{"action":"show_text","contents":[{"text":"CDL has failed to heal the player. This may be the result of several circumstances such as extreme speed or unexpected (such as modded) player hitboxes. Please report this error if neither of these situations were the case as it may be indicative of a larger problem. (Note: Failing to heal at high speeds is unfixable, don't bother reporting this message if that was the case.)","color":"#EC3C3C"}]}}]

scoreboard players set @s cdl.hth.amount 0