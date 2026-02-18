extends Node2D

var cpressed = false
var talked = false
var numtalk = 0
var mr_smiley_pressed = false
@onready var mr_smiley_talk_panel = $"Global_Characters/Mr Smiley Talk Panel"
@onready var mr_smiley = $"MrSmiley Event/MrSmiley"
@onready var label = $"MrSmiley Event/Label"
@onready var mr_smiley_button = $"MrSmiley Event/Button"
@onready var hud = $Global_Characters/HUD
@onready var text_1 = $"Global_Characters/Mr Smiley Talk Panel/Panel/text1"
@onready var text_2 = $"Global_Characters/Mr Smiley Talk Panel/Panel/text2"
@onready var text_3 = $"Global_Characters/Mr Smiley Talk Panel/Panel/text3"
@onready var characters = $Global_Characters/Characters


func _ready():
	mr_smiley_talk_panel.visible = false
	mr_smiley.visible = true
	label.visible = true
	mr_smiley_button.visible = true
	hud.visible = true
	text_1.visible = false
	text_2.visible = false
	text_3.visible = false
	characters.visible = false

func _process(_delta):
	if numtalk == 0 and mr_smiley_pressed == true:
		text_1.visible = true
		text_2.visible = false
		text_3.visible = false
	if numtalk == 1 and mr_smiley_pressed == true:
		text_1.visible = false
		text_2.visible = true
		text_3.visible = false
	if numtalk == 2 and mr_smiley_pressed == true:
		text_1.visible = false
		text_2.visible = false
		text_3.visible = true
	if numtalk == 3 and mr_smiley_pressed:
		text_1.visible = false
		text_2.visible = false
		text_3.visible = false
		mr_smiley_talk_panel.visible = false
		hud.visible = true
		Global.char_move = true
	if Input.is_action_just_pressed("character_selection"):
		if cpressed == false:
			characters.visible = true
			cpressed = true
		elif cpressed == true:
			characters.visible = false
			cpressed = false

func _on_mr_smiley_pressed():
	mr_smiley_pressed = true
	if talked == false:
		mr_smiley_talk()

func mr_smiley_talk():
	talked = true
	mr_smiley_talk_panel.visible = true
	mr_smiley.visible = false
	label.visible = false
	mr_smiley_button.visible = false
	hud.visible = false
	Global.char_move = false
	Global.mrsmiley_unlocked = true


func _on_next_pressed():
	numtalk += 1


func _on_slime_pressed():
	pass # Replace with function body.
