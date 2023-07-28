

scoreboard players operation @s azide = @s thermodynamic
tag @s remove fuse_azide
tag @s remove fuse_tweak

tellraw @s ["","Aziroazide Azide Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"azide"},"color":"red"}]