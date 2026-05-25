extends Area2D

var entered = false
@onready var timer = $Timer

func _physics_process(delta):
	for body in get_overlapping_bodies():
		if body.is_in_group("player"):
			_on_spikes_entered(body)

func _on_spikes_entered(body: Node2D):
	if entered:
		return
	
	entered = true
	timer.start()
	
	# push player OUT of spike (very important)
	body.global_position = $DestinationPoint.global_position + Vector2(0, -20)
	
	Global.health -= 1
	
	print("Blade hit!")

func _on_Timer_timeout():
	entered = false
