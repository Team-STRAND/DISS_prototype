extends Node2D

onready var parent=get_parent()
onready var pirate_red=parent.get_node("PirateRed")
onready var pirate_girl=parent.get_node("PirateGirl")
onready var pirate_blue=parent.get_node("PirateBlue")

func _ready():
	get_node("Richard/RichardVoice7").connect("finished",get_node("Francesca/FrancescaVoice3"),"play")
	get_node("Richard/RichardVoice7").connect("finished",pirate_red,"stop_move")
	get_node("Richard/RichardVoice7").connect("finished",pirate_girl,"start_move")
	
	get_node("Francesca/FrancescaVoice3").connect("finished",get_node("Richard/RichardVoice8"),"play")
	get_node("Francesca/FrancescaVoice3").connect("finished",pirate_girl,"stop_move")
	get_node("Francesca/FrancescaVoice3").connect("finished",pirate_red,"start_move")
	
	get_node("Richard/RichardVoice8").connect("finished",get_node("Richard/RichardVoice9"),"play")
	get_node("Richard/RichardVoice9").connect("finished",pirate_red,"stop_move")
	get_node("Richard/RichardVoice9").connect("finished",get_parent(),"display_buttons")

func play():
	get_node("Richard/RichardVoice7").play()
	pirate_red.start_move()
