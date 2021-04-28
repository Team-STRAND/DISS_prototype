extends Node2D


func _ready():
	get_node("Richard/RichardVoice17").connect("finished",get_node("Luigi/LuigiVoice10"),"play")
	get_node("Luigi/LuigiVoice10").connect("finished",get_node("Francesca/FrancescaVoice9"),"play")
	
func play():
	get_node("Richard/RichardVoice17").play()
