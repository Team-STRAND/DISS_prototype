extends Node2D

onready var parrot=get_parent().get_node("Parrot")

func _ready():	
	get_node("Richard/RichardVoice5").connect("finished",get_node("Simon/SimonVoice6"),"play")
	get_node("Richard/RichardVoice5").connect("finished",parrot,"start_move")
	
	get_node("Simon/SimonVoice6").connect("finished",get_node("Richard/RichardVoice6"),"play")
	get_node("Simon/SimonVoice6").connect("finished",parrot,"stop_move")
	
	get_node("Richard/RichardVoice6").connect("finished",get_node("Simon/SimonVoice7"),"play")
	get_node("Richard/RichardVoice6").connect("finished",parrot,"start_move")
	
	get_node("Simon/SimonVoice7").connect("finished",get_node("Narator/NaratorVoice8"),"play")
	get_node("Simon/SimonVoice7").connect("finished",parrot,"stop_move")
	
	get_node("Narator/NaratorVoice8").connect("finished",get_parent().get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice8")])
	get_node("Narator/NaratorVoice8").connect("finished",get_parent().get_node("Question"),"enable_button")
	get_node("Narator/NaratorVoice8").connect("finished",get_parent(),"enable_arrow_buttons")
	
func play():
	get_node("Richard/RichardVoice5").play()

func stop_sounds():
	get_node("Narator/NaratorVoice9").stop()
	get_node("Narator/NaratorVoice10").stop()
