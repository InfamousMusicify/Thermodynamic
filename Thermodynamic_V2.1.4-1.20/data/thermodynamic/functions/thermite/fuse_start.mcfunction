# thermite_fuse_start   
tag @s add fuse
scoreboard players operation @s thermite = @p[tag=fuse] thermite

scoreboard players operation @s[scores={thermite=1..}] thermite *= #20 therm.config
#scoreboard players add @s thermite 1