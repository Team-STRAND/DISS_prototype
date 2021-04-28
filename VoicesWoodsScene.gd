extends Node2D


func _ready():
	get_node("Luigi/LuigiVoice7").connect("finished",get_node("Francesca/FrancescaVoice5"),"play")
	get_node("Francesca/FrancescaVoice5").connect("finished",get_node("Richard/RichardVoice11"),"play")

	get_node("Francesca/FrancescaVoice6").connect("finished",get_node("Richard/RichardVoice12"),"play")
	
func play():
	get_node("Luigi/LuigiVoice7").play()
