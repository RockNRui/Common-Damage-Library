# Common-Damage-Library
A minecraft datapack to deal custom amounts of damage and healing to mobs and players.

Credits:

PearUhDox: True mob damage, normal player damage, and mob healing.

RockNRed: Normal mob damage, player healing, compilation, re-formatting/re-organization, and optimization.

gibbs: True player damage original tech.

GalacticAC: Normal player damage original tech concept.

# Purpose

This datapack aims to make it as easy as possible for a user to do custom amounts of damage or healing to a player or mobs for their own systems, with minimal technical knowledge required.

# Installation & Note

Drag & drop the datapack into your world's datapacks folder and reload/enable it.

Important note: This datapack forceloads a chunk at (/tp @s 4206861 1 4206888 90 0) to store the iron golems used for custom damage. Be careful not to unload this.

# Pre-made Examples

Also included is a seperate datapack called `cdl Examples`. In it you can find pre-made examples of how to call all the types of damage and healing, as well as already set up custom death messages.


# Functionality

This datapack works by 2 scoreboards `cdl.Damage_Queue` and `cdl.Healing_Queue`. You set these values to the desired damage or healing amount for the desired entity.

Afterwards (Ideally in the same tick/function.), you run the respective function for the type of mob and damage you wish to do.

This is any combination of `/function cd:lib/[mob or player]/[damage or healing]/[normal or true]`

Some examples: `/function cd:lib/mob/damage/true`, `/function cd:lib/player/damage/normal`, `/function cd:lib/mob/heal`

This function must be ran `AS` and `AT` the mob.


# Note

I reccomend using the pre-made examples if learning by example is easier for you. Below is the more "manual" explanations and setup.

# Custom Death Messages

When a player dies to custom damage (Rather it be normal or true.) if showDeathMessages is set to true, you can have your own custom death messages.

To do this you must have the file custom_death_message.json in the minecraft/tags/functions namespace in your datapack.
Inside it, place this:
```
{
	"values": [
		"foo:bar/custom_death_message"
	]
}

```

Replacing foo:bar with your own datapack. You also need a function for this to call, which you can name whatever you want. Inside that place this:
```
execute if score @s cdl.Death_ID matches 1 run tellraw @a [{"selector":"@p"},{"text":" died to some \"NORMAL\" custom damage","color":"white"}]
```
You'll need 1 line for every custom death message.

You also need to set the ID of your custom death message when you call the damage to the player. This needs to be done BEFORE the function call itself.
For example:
```
scoreboard players set @s cdl.Damage_Queue 10
scoreboard players set @s cdl.Death_ID 1
function cd:lib/player/damage/normal
```
Be careful not to overlap your ID with other datapacks that use this library!

You can find a pre-made example of all of this already working in the aforementioned example.

