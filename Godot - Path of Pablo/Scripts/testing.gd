extends Node2D

@onready var pick_player = $Global_Characters/PickPlayer
var c_pressed = false

func _ready():
	pick_player.visible = false

func _process(_delta):
	if Input.is_action_just_pressed("character_selection"):
		if c_pressed == false:
			pick_player.visible = true
			c_pressed = true
		elif c_pressed == true:
			pick_player.visible = false
			c_pressed = false
	if Input.is_action_just_pressed("minus"):
		Global.health -= 1
		print(Global.health)
	if Input.is_action_just_pressed("plus"):
		Global.health += 1
		print(Global.health)

func _on_pablo_button_pressed():
	Global.char_pablo = true
	Global.char_mrsmiley = false
	Global.char_speed = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false

func _on_mr_smiley_button_pressed():
	Global.char_mrsmiley = true
	Global.char_pablo = false
	Global.char_speed = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false

func _on_speed_button_pressed():
	Global.char_speed = true
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false

func _on_megapablo_button_pressed():
	Global.char_speed = false
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = true
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false

func _on_knight_button_pressed():
	Global.char_speed = false
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = false
	Global.char_knight = true
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = false

func _on_paul_button_pressed():
	Global.char_speed = false
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = true
	Global.char_slime = false
	Global.char_donut = false

func _on_slime_button_pressed():
	Global.char_speed = false
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = true
	Global.char_donut = false

func _on_donut_button_pressed():
	Global.char_speed = false
	Global.char_pablo = false
	Global.char_mrsmiley = false
	Global.char_megapablo = false
	Global.char_knight = false
	Global.char_paul = false
	Global.char_slime = false
	Global.char_donut = true
