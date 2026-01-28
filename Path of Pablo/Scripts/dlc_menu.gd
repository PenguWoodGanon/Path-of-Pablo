extends Control

@onready var locked_button = $"Tower of Cursor/LockedButton"
@onready var unlocked_button = $"Tower of Cursor/UnlockedButton"
@onready var line_edit = $"Deluxe Edition/D-LineEdit"

var text = "PABLO-D757F"

func _ready():
	locked_button.visible = true
	unlocked_button.visible = false

func _process(_delta):
	if Global.cursortower == true:
		locked_button.visible = false
		unlocked_button.visible = true
	var code: String = line_edit.text
	if code == text:
		Global.deluxe = true
	if Input.is_action_just_pressed("escape"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
