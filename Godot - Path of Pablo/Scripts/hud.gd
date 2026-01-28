extends Panel

@onready var heart = $Heart
@onready var char_select = $Character/Character_Selection
@onready var coin_label = $Coins/Label


func ready():
	pass

func _process(_delta):
	coin_label.text = str(Global.coins)
	#Health
	if Global.health == 4:
		heart.play("full_health")
	if Global.health == 3:
		heart.play("3_4_health")
	if Global.health == 2:
		heart.play("1_2_health")
	if Global.health == 1:
		heart.play("1_4_health")
	if Global.health == 0:
		heart.play("dead")
		#Characters
	if Global.char_mrsmiley == true:
		char_select.play("mr.smiley")
	if Global.char_pablo == true:
		char_select.play("pablo")
	if Global.char_speed == true:
		char_select.play("speed")
	if Global.char_megapablo == true:
		char_select.play("megapablo")
	if Global.char_knight == true:
		char_select.play("knight")
	if Global.char_paul == true:
		char_select.play("paul")
	if Global.char_slime == true:
		char_select.play("slime")
	if Global.char_donut == true:
		char_select.play("donut")
