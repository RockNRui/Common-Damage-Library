#If the mob is NOT invulnerable, continue.
execute unless entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:4b}]}] run function cd:func/mob_damage_true/not_invulnerable

#Cleanup & reset
scoreboard players reset @s cdl.Damage_Queue

#Call Invul Timer for [Cartographer] Mob Abilities
scoreboard players set $invul_time_check invul 25