extends Node2D

var talked = false
@onready var mr_smiley_talk_panel = $"Global_Characters/Mr Smiley Talk Panel"
@onready var mr_smiley = $"MrSmiley Event/MrSmiley"
@onready var label = $"MrSmiley Event/Label"
@onready var mr_smiley_button = $"MrSmiley Event/Button"
@onready var hud = $Global_Characters/HUD



func _ready():
	mr_smiley_talk_panel.visible = false
	mr_smiley.visible = true
	label.visible = true
	mr_smiley_button.visible = true
	hud.visible = true

func _on_mr_smiley_pressed():
	if talked == false:
		mr_smiley_talk()
	print("works")

func mr_smiley_talk():
	talked = true
	mr_smiley_talk_panel.visible = true
	mr_smiley.visible = false
	label.visible = false
	mr_smiley_button.visible = false
	hud.visible = false
	Global.char_move = false
