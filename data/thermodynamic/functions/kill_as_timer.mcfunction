# kill_as_timer

# using therm sneaking because it isnt used by anything else and is arbitrary on armorstands

# Kill old bugged ones
scoreboard players add @s therm_as_kill 1
# hard coded
execute as @s[scores={therm_as_kill=61..}] run kill @s
# optional
#execute if score #kill_as therm.config < @s therm_as_kill run kill @s

# quick testing line
#execute as @s[scores={therm_as_kill=5..}] run kill @s