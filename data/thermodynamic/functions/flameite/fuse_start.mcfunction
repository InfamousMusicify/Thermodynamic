# flameite_fuse_start   
tag @s add fuse
scoreboard players operation @s flameite = @p[tag=fuse] flameite

scoreboard players operation @s[scores={flameite=1..}] flameite *= #20 therm.config
#scoreboard players add @s flameite 1