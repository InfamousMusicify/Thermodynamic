# rosite_fuse_start   
tag @s add fuse
scoreboard players operation @s rosite = @p[tag=fuse] rosite

scoreboard players operation @s[scores={rosite=1..}] rosite *= #20 therm.config
#scoreboard players add @s rosite 1