extends Node2D

func _ready():	
	get_node("Richard/RichardVoice5").connect("finished",get_node("Richard/RichardVoice6"),"play")
	
	
	
func play():
	get_node("Richard/RichardVoice5").play()
