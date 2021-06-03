extends Node2D



func _ready():
	get_node("Francesca/FrancescaVoice7").connect("finished",get_node("Luigi/LuigiVoice8"),"play")
	
	get_node("Luigi/LuigiVoice8").connect("finished",get_parent(),"next_scene")
	
func play():
	get_node("Francesca/FrancescaVoice7").play()


