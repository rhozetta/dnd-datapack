execute at @a[tag=Speed] run particle dolphin ^ ^ ^ 0.25 0.75 0.25 0 250 force

execute at @a[tag=Jump] run particle dust 0 1 0 1 ^ ^ ^ 0.25 0.1 0.25 0 10 force

execute as @a[scores={FaerieFire=1..}] at @a[scores={FaerieFire=1..}] run function dnd:spells/faerie_fire
execute as @a[scores={Fireball=1..}] at @a[scores={Fireball=1..}] run function dnd:spells/fireball
execute as @a[scores={Invisibility=1..}] at @a[scores={Invisibility=1..}] run function dnd:spells/invisibility
execute as @a[scores={Jump=1..}] at @a[scores={Jump=1..}] run function dnd:spells/jump
execute as @a[scores={Speed=1..}] at @a[scores={Speed=1..}] run function dnd:spells/longstrider
execute as @a[scores={Heal=1..}] at @a[scores={Heal=1..}] run function dnd:spells/heal/on_target
execute as @a[scores={HealingWord=1..}] at @a[scores={HealingWord=1..}] run function dnd:spells/healing-word/on_target
execute as @a[scores={HealSelf=1..}] at @a[scores={HealSelf=1..}] run function dnd:spells/heal/on_user
execute as @a[scores={HealingWordSelf=1..}] at @a[scores={HealingWordSelf=1..}] run function dnd:spells/healing-word/on_user
execute as @a[scores={AnimateDead=1..}] at @a[scores={AnimateDead=1..}] run function dnd:spells/animate-dead

scoreboard players reset @a[scores={FaerieFire=1..}] FaerieFire
scoreboard players reset @a[scores={Fireball=1..}] Fireball
scoreboard players reset @a[scores={Invisibility=1..}] Invisibility
scoreboard players reset @a[scores={Jump=1..}] Jump
scoreboard players reset @a[scores={Speed=1..}] Speed
scoreboard players reset @a[scores={Heal=1..}] Heal
scoreboard players reset @a[scores={HealingWord=1..}] HealingWord
scoreboard players reset @a[scores={HealSelf=1..}] HealSelf
scoreboard players reset @a[scores={HealingWordSelf=1..}] HealingWordSelf
scoreboard players reset @a[scores={AnimateDead=1..}] AnimateDead

scoreboard players enable @a[level=1..,tag=SupportClass] FaerieFire
scoreboard players enable @a[level=3..] Fireball
scoreboard players enable @a[level=5..,tag=RougeClass] Invisibility
scoreboard players enable @a[level=2..,tag=RougeClass] Jump
scoreboard players enable @a[level=2..,tag=RougeClass] Speed
scoreboard players enable @a[level=5..,tag=SupportClass] Heal
scoreboard players enable @a[level=1..,tag=SupportClass] HealingWord
scoreboard players enable @a[level=5..,tag=SupportClass] HealSelf
scoreboard players enable @a[level=1..,tag=SupportClass] HealingWordSelf
scoreboard players enable @a[level=1..,tag=RougeClass] HealingWordSelf
scoreboard players enable @a[level=5..] AnimateDead


execute as @a[scores={SupportBook=1..},tag=!HasClass] at @a[scores={SupportBook=1..},tag=!HasClass] run function dnd:books/support
tag @a[scores={SupportBook=1..},tag=!HasClass] add SupportClass
tag @a[scores={SupportBook=1..},tag=!HasClass] add HasClass
scoreboard players enable @a[tag=!HasClass] SupportBook
scoreboard players reset @a[scores={SupportBook=1..}] SupportBook

execute as @a[scores={RougeBook=1..},tag=!HasClass] at @a[scores={RougeBook=1..},tag=!HasClass] run function dnd:books/rouge
tag @a[scores={RougeBook=1..},tag=!HasClass] add RougeClass
tag @a[scores={RougeBook=1..},tag=!HasClass] add HasClass
scoreboard players enable @a[tag=!HasClass] RougeBook
scoreboard players reset @a[scores={RougeBook=1..}] RougeBook