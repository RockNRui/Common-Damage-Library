#Does damage to a player via "true" damage, ignoring their armor/protection values.

#Configurable: Damage amount (in half hearts. Example: 4. (2 hearts.))
scoreboard players set @s cdl.Damage_Queue 4
#Configurable: Custom death message ID. Be careful not to overlap with other datapacks!
scoreboard players set @s cdl.Death_ID 2
#Required function.
function cd:lib/player/damage/true