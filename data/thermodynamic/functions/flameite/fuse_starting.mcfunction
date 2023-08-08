


tag @s add fuse
execute as @e[type=minecraft:armor_stand,tag=flameite_entity,tag=!fuse,limit=1,sort=nearest] run function thermodynamic:flameite/fuse_start
execute run tag @s remove fuse
execute as @e[type=minecraft:armor_stand,tag=flameite_entity,tag=fuse,limit=1,sort=nearest] run function thermodynamic:flameite/fuse_go