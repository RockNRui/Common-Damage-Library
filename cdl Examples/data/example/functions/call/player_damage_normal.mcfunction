#Does damage to a player, respecting their armor/proteciton values as if they were hit naturally.

#Configurable: Damage amount (in half hearts. Example: 4. (2 hearts.))
scoreboard players set @s cdl.Damage_Queue 4
#Configurable: Custom death message ID. Be careful not to overlap with other datapacks!
scoreboard players set @s cdl.Death_ID 1
#Required function.
function cd:lib/player/damage/normal