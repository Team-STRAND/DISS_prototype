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
	
	get_node("Francesca/FrancescaVoice6").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	
func play():
	get_node("Luigi/LuigiVoice7").play()
	parent.get_node("PirateBlue").start_move()
