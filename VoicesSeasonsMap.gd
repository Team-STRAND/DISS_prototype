extends Node2D


func _ready():
	get_node("Richard/RichardVoice13").connect("finished",get_parent(),"next_scene")
	
func play():
	get_node("Richard/RichardVoice13").play()

