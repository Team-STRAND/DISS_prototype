extends Node2D


func _ready():
	play()
	
func play():
	get_node("Narator/NaratorVoice1").play()

