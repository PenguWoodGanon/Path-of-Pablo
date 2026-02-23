extends Control

@onready var username_label = $UsernamePanel/Label
@onready var line_edit = $UsernamePick/LineEdit
@onready var verify = $UsernamePick/Verify
@onready var label = $UsernamePick/Label

func _ready():
	Global.load_data()
	update_ui()

func _process(_delta):
	username_label.text = str(Global.username)
	Global.save()
	Global.load_data()
	if Input.is_action_just_pressed("escape"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func update_ui():
	if Global.username == "N/A":
		line_edit.visible = true
		verify.visible = true
		label.visible = true
	else:
		line_edit.visible = false
		verify.visible = false
		label.visible = false

func _on_save_pressed():
	Global.save()

func _on_load_pressed():
	Global.load_data()
	update_ui()

func _on_verify_pressed():
	Global.username = line_edit.text
	update_ui()

func _on_slot_1_pressed():
	pass # Replace with function body.


func _on_slot_2_pressed():
	pass # Replace with function body.
