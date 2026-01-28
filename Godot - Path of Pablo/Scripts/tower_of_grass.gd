extends Node2D




func _on_door_level_1_body_entered(body: PhysicsBody2D):
	print("FAAAAA")
	if Input.is_action_just_pressed(""):
		print("works")
		body.set_position($"Level 1/Door_Level_1/Marker2D".global_position)
