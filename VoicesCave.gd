extends Node2D


func _ready():
	
	get_node("Richard/RichardVoice14").connect("finished",get_node("Richard/RichardVoice15"),"play")

func play():
	get_node("Richard/RichardVoice14").play()
	get_parent().get_node("PirateRed").start_move()
