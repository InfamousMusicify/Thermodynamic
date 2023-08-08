

scoreboard players operation @s flameite = @s thermodynamic
tag @s remove fuse_flameite
tag @s remove fuse_tweak
tellraw @s ["","Flameite Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"flameite"},"color":"red"}]
