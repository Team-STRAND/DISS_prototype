extends Node2D


func _ready():
	get_node("Richard/RichardVoice17").connect("finished",get_node("Luigi/LuigiVoice10"),"play")
	get_node("Luigi/LuigiVoice10").connect("finished",get_node("Francesca/FrancescaVoice9"),"play")
	get_node("Francesca/FrancescaVoice9").connect("finished",get_node("Simon/SimonVoice17"),"play")
	get_node("Simon/SimonVoice17").connect("finished",get_node("Richard/RichardVoice18"),"play")
	get_node("Richard/RichardVoice18").connect("finished",get_parent(),"next_scene")
	
func play():
	get_node("Richard/RichardVoice17").play()
