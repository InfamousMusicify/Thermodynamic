

scoreboard players operation @s cryopop = @s thermodynamic
tag @s remove fuse_cryopop
tag @s remove fuse_tweak

tellraw @s ["","Cryo-Pop Fuse ",{"text":"Set: ","color":"red"},{"score":{"name":"@s","objective":"cryopop"},"color":"red"}]