extends Node2D

onready var ding_sound=get_node("DingSound")
onready var wrong_sound=get_node("WrongSound")

func _ready():
	ding_sound.connect("finished",self,"next_scene")

	get_node("ButtonAutumn/RightSymbol").visible=false
	get_node("ButtonSpring/WrongSymbol").visible=false
	get_node("ButtonSummer/WrongSymbol").visible=false
	get_node("ButtonWinter/WrongSymbol").visible=false

func next_scene():
	get_tree().change_scene("res://Map.tscn")

func _on_ButtonAutumn_pressed():
	get_node("ButtonAutumn/RightSymbol").visible=true
	ding_sound.play()
	Score.season_score+=10

func _on_ButtonSpring_pressed():
	get_node("ButtonSpring/WrongSymbol").visible=true
	wrong_sound.play()
	Score.season_score-=2

func _on_ButtonSummer_pressed():
	get_node("ButtonSummer/WrongSymbol").visible=true
	wrong_sound.play()
	Score.season_score-=2

func _on_ButtonWinter_pressed():
	get_node("ButtonWinter/WrongSymbol").visible=true
	wrong_sound.play()
	Score.season_score-=2
