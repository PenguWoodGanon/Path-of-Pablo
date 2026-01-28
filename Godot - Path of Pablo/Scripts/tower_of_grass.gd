extends Node2D

@onready var door_level_1 = $"Level 1/Door_Level_1"
@onready var player = $Global_Characters


func _on_door_level_1_body_entered(_body):
	if Input.is_action_just_pressed("enter"):
		print("works")
