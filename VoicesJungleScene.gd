extends Node2D

func _ready():
	get_node("Richard/RichardVoice7").connect("finished",get_node("Francesca/FrancescaVoice3"),"play")
	get_node("Francesca/FrancescaVoice3").connect("finished",get_node("Richard/RichardVoice8"),"play")
	get_node("Richard/RichardVoice8").connect("finished",get_node("Richard/RichardVoice9"),"play")
	
	get_node("Richard/RichardVoice9").connect("finished",get_parent(),"display_buttons")

func play():
	get_node("Richard/RichardVoice7").play()
