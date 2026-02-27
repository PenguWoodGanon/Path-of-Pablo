extends Area2D

var entered = false

func _on_spikes_entered(body: Node2D):
	if entered == false:
		body.set_position($DestinationPoint.global_position)
