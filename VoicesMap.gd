extends Node2D



func _ready():
	get_node("Francesca/FrancescaVoice7").connect("finished",get_node("Luigi/LuigiVoice8"),"play")
	
func play():
	get_node("Francesca/FrancescaVoice7").play()


