extends Node2D


func _ready():
	get_node("Narator/NaratorVoice25").connect("finished",get_node("Francesca/FrancescaVoice8"),"play")
	get_node("Narator/NaratorVoice25").connect("finished",get_parent().get_node("PirateGirl"),"start_move")
	
	get_node("Francesca/FrancescaVoice8").connect("finished",get_parent().get_node("PirateGirl"),"stop_move")

func play():
	get_node("Narator/NaratorVoice25").play()

	
