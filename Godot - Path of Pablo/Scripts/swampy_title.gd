extends Label

var full_text: String = "Swampy Bog"

func _ready():
	self.text = full_text
	self.visible_characters = 0
	$Timer.connect("timeout", _on_timer_timeout)

func _on_timer_timeout():
	self.visible_characters += 1
	if self.visible_characters == self.get_total_character_count():
		$Timer.stop()
