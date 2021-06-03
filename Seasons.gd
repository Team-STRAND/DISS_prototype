extends Node2D

onready var ding_sound=get_node("DingSound")
onready var wrong_sound=get_node("WrongSound")
onready var narator_poz=get_node("Voices/Narator/NaratorVoicePoz")
onready var narator_neg=get_node("Voices/Narator/NaratorVoiceNeg")

func _ready():
	narator_poz.connect("finished",self,"next_scene")

	get_node("ButtonAutumn/RightSymbol").visible=false
	get_node("ButtonSpring/WrongSymbol").visible=false
	get_node("ButtonSummer/WrongSymbol").visible=false
	get_node("ButtonWinter/WrongSymbol").visible=false
	disable_buttons()

func disable_buttons():
	get_node("ButtonAutumn").disabled=true
	get_node("ButtonSpring").disabled=true
	get_node("ButtonSummer").disabled=true
	get_node("ButtonWinter").disabled=true

func enable_buttons():
	get_node("ButtonAutumn").disabled=false
	get_node("ButtonSpring").disabled=false
	get_node("ButtonSummer").disabled=false
	get_node("ButtonWinter").disabled=false

func next_scene():
	get_tree().change_scene("res://Map.tscn")

func _on_ButtonAutumn_pressed():
	get_node("Voices").stop_sounds()
	get_node("ButtonAutumn/RightSymbol").visible=true
	ding_sound.play()
	narator_poz.play()
	Score.season_score+=10

func _on_ButtonSpring_pressed():
	get_node("Voices").stop_sounds()
	get_node("ButtonSpring/WrongSymbol").visible=true
	wrong_sound.play()
	narator_neg.play()
	Score.season_score-=2

func _on_ButtonSummer_pressed():
	get_node("Voices").stop_sounds()
	get_node("ButtonSummer/WrongSymbol").visible=true
	wrong_sound.play()
	narator_neg.play()
	Score.season_score-=2

func _on_ButtonWinter_pressed():
	get_node("Voices").stop_sounds()
	get_node("ButtonWinter/WrongSymbol").visible=true
	wrong_sound.play()
	narator_neg.play()
	Score.season_score-=2
