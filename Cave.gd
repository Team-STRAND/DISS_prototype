extends Node2D

enum QUESTION{
	none,
	height,
	animal,
	hair,
	clothes
}

var current_question=QUESTION.none

onready var pirate_red_right_symbol=get_node("PirateRed/RightSymbol")
onready var pirate_red_wrong_symbol=get_node("PirateRed/WrongSymbol")

onready var pirate_blue_right_symbol=get_node("PirateBlue/RightSymbol")
onready var pirate_blue_wrong_symbol=get_node("PirateBlue/WrongSymbol")

onready var pirate_girl_right_symbol=get_node("PirateGirl/RightSymbol")
onready var pirate_girl_wrong_symbol=get_node("PirateGirl/WrongSymbol")

onready var parrot_right_symbol=get_node("Parrot/RightSymbol")
onready var parrot_wrong_symbol=get_node("Parrot/WrongSymbol")

onready var poztive_guard=[
	get_node("Voices/CaveGuard/GuardPoz1"),
	get_node("Voices/CaveGuard/GuardPoz2"),
	get_node("Voices/CaveGuard/GuardPoz3"),
	get_node("Voices/CaveGuard/GuardPoz4")
]

onready var negative_guard=[
	get_node("Voices/CaveGuard/GuardNeg2"),
	get_node("Voices/CaveGuard/GuardNeg3")
]

func _ready():
	get_node("AnimationPlayerPirates").play("Move")	
	reset_symbols()

func next_scene():
	get_node("Groot/AnimationPlayerGroot").play("GrootMove")

func reset_symbols():
	pirate_red_right_symbol.visible=false
	pirate_red_wrong_symbol.visible=false

	pirate_blue_right_symbol.visible=false
	pirate_blue_wrong_symbol.visible=false

	pirate_girl_right_symbol.visible=false
	pirate_girl_wrong_symbol.visible=false
	
	parrot_right_symbol.visible=false
	parrot_wrong_symbol.visible=false

func set_current_question(question):
	current_question=question

func right_answer(symbol):
	symbol.visible=true
	get_node("DingSound").play()

func wrong_answer(symbol):
	symbol.visible=true
	get_node("WrongSound").play()
	var item = negative_guard[randi() % negative_guard.size()]
	item.play()

func _on_PirateBlue_pressed():
	get_node("Voices").stop_sounds()
	match current_question:
		QUESTION.height:
			right_answer(pirate_blue_right_symbol)
			poztive_guard[0].play()
			Score.cave_entrace_score+=10
		QUESTION.animal:
			wrong_answer(pirate_blue_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.hair:
			wrong_answer(pirate_blue_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.clothes:
			right_answer(pirate_blue_right_symbol)
			poztive_guard[3].play()
			Score.cave_entrace_score+=10

func _on_PirateRed_pressed():
	get_node("Voices").stop_sounds()
	match current_question:
		QUESTION.height:
			wrong_answer(pirate_red_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.animal:
			wrong_answer(pirate_red_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.hair:
			wrong_answer(pirate_red_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.clothes:	
			wrong_answer(pirate_red_wrong_symbol)
			Score.cave_entrace_score-=3

func _on_PirateGirl_pressed():
	get_node("Voices").stop_sounds()
	match current_question:
		QUESTION.height:
			wrong_answer(pirate_girl_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.animal:
			wrong_answer(pirate_girl_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.hair:
			right_answer(pirate_girl_right_symbol)			
			poztive_guard[2].play()
			Score.cave_entrace_score+=10
		QUESTION.clothes:	
			wrong_answer(pirate_girl_wrong_symbol)
			Score.cave_entrace_score-=3

func _on_Parrot_pressed():
	get_node("Voices").stop_sounds()
	match current_question:
		QUESTION.height:
			wrong_answer(parrot_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.animal:
			right_answer(parrot_right_symbol)
			poztive_guard[1].play()
			Score.cave_entrace_score+=10
		QUESTION.hair:
			wrong_answer(parrot_wrong_symbol)
			Score.cave_entrace_score-=3
		QUESTION.clothes:	
			wrong_answer(parrot_wrong_symbol)
			Score.cave_entrace_score-=3

func _on_AnimationPlayerGroot_animation_finished(anim_name):
	get_node("AnimationPlayerPirates").play("GoInsideCave")

func _on_AnimationPlayerPirates_animation_finished(anim_name):
	if(anim_name=="GoInsideCave"):
		get_tree().change_scene("res://CaveInside.tscn")
	elif(anim_name=="Move"):
		get_node("Voices").play()


