extends Node2D

func _ready():
	get_node("Simon/SimonVoice8").connect("finished",get_node("Richard/RichardVoice12"),"play") 
	get_node("Simon/SimonVoice8").connect("finished",get_parent().get_node("Parrot"),"stop_move") 
	get_node("Simon/SimonVoice8").connect("finished",get_parent().get_node("PirateRed"),"start_move") 
	
	get_node("Richard/RichardVoice12").connect("finished",get_parent().get_node("PirateRed"),"stop_move")
	
func play_voices():
	get_node("Simon/SimonVoice8").play()
	get_parent().get_node("Parrot").start_move()

