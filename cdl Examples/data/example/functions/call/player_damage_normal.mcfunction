#Does damage to a player, respecting their armor/proteciton values as if they were hit naturally.

#Configurable: Damage amount (in half hearts. Example: 4. (2 hearts.))
scoreboard players set @s cdl.damage_queue 4
#Configurable: Custom death message ID. Be careful not to overlap with other datapacks!
scoreboard players set @s cdl.death_id 1
#Required function.
function cd:lib/player/damage/normal