#Does damage to a mob, respecting their armor/proteciton values as if they were hit naturally.

#Configurable: Damage amount (in half hearts. Example: 4. (2 hearts.))
scoreboard players set @s cdl.damage_queue 4
#Required function.
function cd:lib/mob/damage/normal