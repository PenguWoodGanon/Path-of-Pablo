extends Area2D

var entered = false

func _on_portal_entered(body: Node2D):
	if not entered:
		body.global_position = $DestinationPoint.global_position
		print("works")
		entered = true
