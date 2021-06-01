extends Node2D

onready var parent=get_parent()

func _ready():
	get_node("Luigi/LuigiVoice7").connect("finished",get_node("Francesca/FrancescaVoice5"),"play")
	get_node("Luigi/LuigiVoice7").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	get_node("Luigi/LuigiVoice7").connect("finished",parent.get_node("PirateGirl"),"start_move")
	
	get_node("Francesca/FrancescaVoice5").connect("finished",get_node("Richard/RichardVoice11"),"play")
	get_node("Francesca/FrancescaVoice5").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	get_node("Francesca/FrancescaVoice5").connect("finished",parent.get_node("PirateRed"),"start_move")

	get_node("Richard/RichardVoice11").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice11").connect("finished",get_node("Narator/NaratorVoice16"),"play")
	
	get_node("Narator/NaratorVoice16").connect("finished",parent.get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice16")])
	get_node("Narator/NaratorVoice16").connect("finished",parent.get_node("Question"),"enable_button")
	
	get_node("Francesca/FrancescaVoice6").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	
func play():
	get_node("Luigi/LuigiVoice7").play()
	parent.get_node("PirateBlue").start_move()

func stop_sounds():
	
	get_node("Narator/NaratorVoice16").stop()
	get_node("Narator/NaratorVoice17").stop()
	get_node("Narator/NaratorVoice18").stop()
