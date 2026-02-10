extends Panel

@onready var mrsmiley_locked = $MrSmileyCard/LOCKED


func _ready():
	mrsmiley_locked.visible = true

func _process(_delta):
	if Global.mrsmiley_unlocked == true:
		mrsmiley_locked.visible = false

#Mr. Smiley Button
func _on_button_pressed():
	if Global.mrsmiley_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = true
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = false

#Pablo Button
func _on_pablo_pressed():
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = false

#Speed Button
func _on_speed_pressed():
	if Global.speed_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = false

#Megapablo Button
func _on_megapablo_pressed():
	if Global.megapablo_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = true
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = false

#Warrior Button
func _on_warrior_pressed():
	if Global.knight_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = true
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = false

#Paul Pressed
func _on_paul_pressed():
	if Global.paul_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = true
		Global.char_slime = false
		Global.char_donut = false

#Slime Button
func _on_slime_pressed():
	if Global.slime_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = true
		Global.char_donut = false

#Donut Button
func _on_donut_pressed():
	if Global.donut_unlocked == true:
		Global.char_pablo = false
		Global.char_mrsmiley = false
		Global.char_speed = false
		Global.char_megapablo = false
		Global.char_knight = false
		Global.char_paul = false
		Global.char_slime = false
		Global.char_donut = true
