extends Node2D

func display_buttons():
	get_node("YesButton").visible=true
	get_node("NoButton").visible=true

func _ready():
	
	get_node("YesButton").visible=false
	get_node("NoButton").visible=false
	
	get_node("Voices").play()

