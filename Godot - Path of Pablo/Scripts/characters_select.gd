extends Panel

@onready var mrsmiley_locked = $MrSmileyCard/LOCKED


func _ready():
	mrsmiley_locked.visible = true

func _process(_delta):
	if Global.mrsmiley_unlocked == true:
		mrsmiley_locked.visible = false
