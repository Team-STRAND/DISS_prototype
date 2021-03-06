extends Node2D

onready var parrot=get_parent().get_node("Parrot")
onready var parent=get_parent()

func _ready():
	get_node("Simon/SimonVoice2").play()
	parrot.start_move()
	
	get_node("Simon/SimonVoice2").connect("finished",get_node("Narator/NaratorVoice4"),"play")
	get_node("Simon/SimonVoice2").connect("finished",parrot,"stop_move")
	
	get_node("Narator/NaratorVoice4").connect("finished",parent.get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice4")])
	get_node("Narator/NaratorVoice4").connect("finished",parent.get_node("Question"),"enable_button")
	get_node("Narator/NaratorVoice4").connect("finished",parent,"enable_buttons")
	
	get_node("Simon/SimonVoice4").connect("finished",parrot,"stop_move")
	
	get_node("Simon/SimonVoice5").connect("finished",parrot,"stop_move")

func stop_sounds():
	get_node("Simon/SimonVoice4").stop()
	get_node("Simon/SimonVoice3").stop()
	get_node("Simon/SimonVoice5").stop()
	get_node("Narator/NaratorVoice4").stop()
	get_node("Narator/NaratorVoice5").stop()
	get_node("Narator/NaratorVoice6").stop()
	get_node("Narator/NaratorVoice7").stop()
