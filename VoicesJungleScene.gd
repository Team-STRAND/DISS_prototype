extends Node2D

onready var parent=get_parent()
onready var pirate_red=parent.get_node("PirateRed")
onready var pirate_girl=parent.get_node("PirateGirl")
onready var pirate_blue=parent.get_node("PirateBlue")

onready var question_button=parent.get_node("Question")

func _ready():
	
	get_node("Narator/NaratorVoice11").connect("finished",get_node("Richard/RichardVoice7"),"play")
	get_node("Narator/NaratorVoice11").connect("finished",pirate_red,"start_move")
	
	get_node("Richard/RichardVoice7").connect("finished",get_node("Francesca/FrancescaVoice3"),"play")
	get_node("Richard/RichardVoice7").connect("finished",pirate_red,"stop_move")
	get_node("Richard/RichardVoice7").connect("finished",pirate_girl,"start_move")
	
	get_node("Francesca/FrancescaVoice3").connect("finished",get_node("Richard/RichardVoice8"),"play")
	get_node("Francesca/FrancescaVoice3").connect("finished",pirate_girl,"stop_move")
	get_node("Francesca/FrancescaVoice3").connect("finished",pirate_red,"start_move")
	
	get_node("Richard/RichardVoice8").connect("finished",get_node("Richard/RichardVoice9"),"play")
	get_node("Richard/RichardVoice9").connect("finished",pirate_red,"stop_move")
	get_node("Richard/RichardVoice9").connect("finished",get_parent(),"display_buttons")

	get_node("Richard/RichardVoice9").connect("finished",question_button,"enable_button")
	get_node("Richard/RichardVoice9").connect("finished",get_node("Narator/NaratorVoice12"),"play")
	get_node("Richard/RichardVoice9").connect("finished",question_button,"set_sound_ref",[get_node("Narator/NaratorVoice12")])
	get_node("Narator/NaratorVoice12").connect("finished",get_parent(),"enable_buttons")
	
	get_node("Luigi/LuigiVoice3").connect("finished",pirate_blue,"stop_move")
	get_node("Luigi/LuigiVoice4").connect("finished",pirate_blue,"stop_move")
	
	get_node("Luigi/LuigiVoice4").connect("finished",parent.get_node("AnimationPlayerPirates"),"play",["Leave"])
	
func play():
	get_node("Narator/NaratorVoice11").play()
	
func stop_sounds():
	get_node("Narator/NaratorVoice12").stop()
	get_node("Narator/NaratorVoice13").stop()
	get_node("Narator/NaratorVoice14").stop()
	get_node("Luigi/LuigiVoice3").stop()
	get_node("Luigi/LuigiVoice4").stop()
	get_parent().get_node("Question/SoundRef").stop()
