# Changelog

V 1.2 - 11/17/21

↔ Fixed a bug where Custom Death Messages would incorrectly show up.

↔ Fixed a bug where showDeathMessages would always get disabled.

↔ Changed some un-caught namesapces to snake_case.

↔ Small comment changes.


V 1.1 - 7/22/21

+ Added more comments/credits/further detail in each function file.

+ Added infrastructure for upcomming datapack integrations.

!! + Added a function to uninstall the datapack (/function cd:sys/uninstall).
Run this, delete the datapack from your datapacks folder, and /reload to fully uninstall.
(It's important you don't /reload before deleting the datapack file, it'll just re-install everything!)

!! ↔ The entire pack has been converted to snake case. Effectively this means everything has been made lowercase.
What was prior "cdl.Damage_Queue" or "cdl.Heal_Queue" is now "cdl.damage_queue" and "cdl.heal_queue", respectively.

↔ Fixed various comment typos.

- Removed an old mention of Cartographer.