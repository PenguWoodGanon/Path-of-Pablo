extends Panel

@onready var cost_panel = $Panel
@onready var title_panel = $TitlePanel
@onready var anim_player = $BoosterPack/AnimationPlayer

var random_num = RandomNumberGenerator.new()

# Appearance vars
@onready var mr_smiley_card = $Cards/MrSmileyCard
@onready var speed_card = $Cards/SpeedCard
@onready var paul_card = $Cards/PaulCard
@onready var slime_card = $Cards/SlimeCard
@onready var william_card = $Cards/WilliamCard
@onready var donut_card = $Cards/DonutCard
@onready var mega_pablo_card = $Cards/MegaPabloCard
@onready var timer = $Cards/Timer

var testing = false

func _ready():
	random_num.randomize()

	cost_panel.visible = true
	title_panel.visible = true

	mr_smiley_card.visible = false
	speed_card.visible = false
	paul_card.visible = false
	slime_card.visible = false
	william_card.visible = false
	donut_card.visible = false
	mega_pablo_card.visible = false

func _process(_delta):
	if Input.is_action_just_pressed("testing"):
		if testing == true:
			cost_panel.visible = false
			title_panel.visible = false
			await roll()

func reset():
	cost_panel.visible = true
	title_panel.visible = true
	random_num.randomize()

func _on_button_pressed():
	if Global.coins >= 15:
		Global.coins -= 15
		cost_panel.visible = false
		title_panel.visible = false
		await roll()


func roll():
	anim_player.play("spin_faster")

	random_num.randomize()
	var random_int = random_num.randi_range(2, 8)
	print("Rolled:", random_int)

	if random_int == 2 and !Global.mrsmiley_unlocked:
		Global.mrsmiley_unlocked = true
		mr_smiley_card.visible = true
		await get_tree().create_timer(2.0).timeout
		mr_smiley_card.visible = false
		reset()

	elif random_int == 3 and !Global.speed_unlocked:
		Global.speed_unlocked = true
		speed_card.visible = true
		await get_tree().create_timer(2.0).timeout
		speed_card.visible = false
		reset()

	elif random_int == 4 and !Global.paul_unlocked:
		Global.paul_unlocked = true
		paul_card.visible = true
		await get_tree().create_timer(2.0).timeout
		paul_card.visible = false
		reset()

	elif random_int == 5 and !Global.slime_unlocked:
		Global.slime_unlocked = true
		slime_card.visible = true
		await get_tree().create_timer(2.0).timeout
		slime_card.visible = false
		reset()

	elif random_int == 6 and !Global.knight_unlocked:
		Global.knight_unlocked = true
		william_card.visible = true
		await get_tree().create_timer(2.0).timeout
		william_card.visible = false
		reset()

	elif random_int == 7 and !Global.donut_unlocked:
		Global.donut_unlocked = true
		donut_card.visible = true
		await get_tree().create_timer(2.0).timeout
		donut_card.visible = false
		reset()

	elif random_int == 8 and !Global.megapablo_unlocked:
		Global.megapablo_unlocked = true
		mega_pablo_card.visible = true
		await get_tree().create_timer(2.0).timeout
		mega_pablo_card.visible = false
		reset()

	else:
		print("Already unlocked, roll again")
		roll()


func show_card(card):
	card.visible = true
	timer.start()
	await timer.timeout
	card.visible = false
