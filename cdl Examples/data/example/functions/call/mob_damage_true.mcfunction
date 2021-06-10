#Does damage to a mob via "true" damage, ignoring their armor/protection values.

#Configurable: Damage amount (in half hearts. Example: 4. (2 hearts.))
scoreboard players set @s cdl.Damage_Queue 4
#Required function.
function cd:lib/mob/damage/true
#Optional: Simulate a damage tick on the mob.
function cd:func/mob_damage_true/invulnerable_tick