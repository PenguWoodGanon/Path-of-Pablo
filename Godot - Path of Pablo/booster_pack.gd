extends Panel

@onready var cost_panel = $Panel
@onready var title_panel = $TitlePanel
@onready var anim_player = $BoosterPack/AnimationPlayer

var random_num = RandomNumberGenerator.new()
var spun = false

#Apperance vars
@onready var mr_smiley_card = $Cards/MrSmileyCard
@onready var speed_card = $Cards/SpeedCard
@onready var paul_card = $Cards/PaulCard
@onready var slime_card = $Cards/SlimeCard
@onready var william_card = $Cards/WilliamCard
@onready var donut_card = $Cards/DonutCard
@onready var mega_pablo_card = $Cards/MegaPabloCard

@onready var timer = $Cards/Timer

func _ready():
	cost_panel.visible = true
	title_panel.visible = true
	mega_pablo_card.visible = false
	mr_smiley_card.visible = false
	speed_card.visible = false
	paul_card.visible = false
	slime_card.visible = false
	william_card.visible = false
	donut_card.visible = false
	mega_pablo_card.visible = false
	Global.char_mrsmiley = false

func _process(_delta):
	#if Input.is_action_just_pressed("testing"):
		#print("testing")
		#roll()
		pass

func _on_button_pressed():
	if Global.coins >= 15:
		Global.coins -= 15
		cost_panel.visible = false
		title_panel.visible = false
		roll()

func roll():
	anim_player.play("spin")
	anim_player.play("spin_fast")
	anim_player.play("spin_faster")
	random_num.randomize()
	var random_int = random_num.randi_range(2, 8)
	print(random_int)
	if random_int == 2:
		#Mr.Smiley
		if Global.mrsmiley_unlocked == false:
			Global.mrsmiley_unlocked = true
			mr_smiley_card.visible = true
			timer.start()
			await timer.timeout
			mr_smiley_card.visible = false
		else:
			roll()
	elif random_int == 3:
		#Speed
		if Global.speed_unlocked == false:
			Global.speed_unlocked = true
			speed_card.visible = true
			timer.start()
			await timer.timeout
			speed_card.visible = false
		else:
			roll()
	elif random_int == 4:
		#Paul
		if Global.paul_unlocked == false:
			Global.paul_unlocked = true
			paul_card.visible = true
			timer.start()
			await timer.timeout
			paul_card.visible = false
		else:
			roll()
	elif random_int == 5:
		#Slime
		if Global.slime_unlocked == false:
			Global.slime_unlocked = true
			slime_card.visible = true
			timer.start()
			await timer.timeout
			slime_card.visible = false
		else:
			roll()

	if random_int == 6:
		if Global.knight_unlocked == false:
			Global.knight_unlocked = true
			william_card.visible = true
			timer.start()
			await timer.timeout
			william_card.visible = false
		else:
			roll()

	if random_int == 7:
		#Donut
		if Global.donut_unlocked == false:
			Global.donut_unlocked = true
			donut_card.visible = true
			timer.start()
			await timer.timeout
			donut_card.visible = false
		else:
			roll()

	if random_int == 8:
		#Mega Pablo
		if Global.megapablo_unlocked == false:
			Global.megapablo_unlocked = true
			mega_pablo_card.visible = true
			timer.start()
			await timer.timeout
			mega_pablo_card.visible = false
		else:
			roll()
