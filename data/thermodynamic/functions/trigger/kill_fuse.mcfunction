# kill all fuse tags after 60 seconds



function thermodynamic:trigger/tag_remove
#scoreboard players set @s[scores={therm_killfuse=60..}] therm_killfuse 0
scoreboard players set @s therm_killfuse 0


