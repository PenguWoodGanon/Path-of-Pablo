extends Node2D

var cpressed = false
var bpressed = false

@onready var hud = $Global_Characters/HUD
@onready var characters = $Global_Characters/Characters
@onready var booster_pack = $"Global_Characters/Booster Pack"

func _ready():
	hud.visible = true
	characters.visible = false
	booster_pack.visible = false
	
	Global.coins = 0
	Global.time_speedrun = 0
	Global.health = 4
	Global.char_move = true


func _process(_delta):

	# CHARACTER SELECT
	if Input.is_action_just_pressed("character_selection"):
		if not cpressed:
			characters.visible = true
			booster_pack.visible = false
			cpressed = true
			bpressed = false
			Global.char_move = false
		else:
			characters.visible = false
			cpressed = false
			Global.char_move = true


	# SHOP
	if Input.is_action_just_pressed("shop"):
		if not bpressed:
			booster_pack.visible = true
			characters.visible = false
			bpressed = true
			cpressed = false
			Global.char_move = false
		else:
			booster_pack.visible = false
			bpressed = false
			Global.char_move = true
