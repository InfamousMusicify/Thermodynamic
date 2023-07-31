# azide_fuse_start   
tag @s add fuse
scoreboard players operation @s azide = @p[tag=fuse] azide


scoreboard players operation @s[scores={azide=1..}] azide *= #20 therm.config
#scoreboard players add @s azide 1