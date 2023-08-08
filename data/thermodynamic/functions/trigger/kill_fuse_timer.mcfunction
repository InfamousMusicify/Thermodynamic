


# Kill old bugged ones
scoreboard players add @s therm_killfuse 1
# hard coded
execute as @s[scores={therm_killfuse=60..}] run function thermodynamic:trigger/kill_fuse



# testing
#execute as @s[scores={therm_killfuse=5..}] run function thermodynamic:fuse_kill
#scoreboard players set @s[scores={therm_killfuse=5..}] therm_killfuse 0
#say killed fuse