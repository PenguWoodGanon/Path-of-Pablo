extends Area2D

func _on_body_entered(body: PhysicsBody2D):
	body.set_position($DestinationPoint.global_position)
	Global.health -= 1
