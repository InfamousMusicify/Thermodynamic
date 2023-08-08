# pinite_fuse_start   
tag @s add fuse
scoreboard players operation @s pinite = @p[tag=fuse] pinite

scoreboard players operation @s[scores={pinite=1..}] pinite *= #20 therm.config
#scoreboard players add @s pinite 1