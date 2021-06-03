extends Node2D

func display_buttons():
	get_node("YesButton").visible=true
	get_node("NoButton").visible=true

func enable_buttons():
	get_node("YesButton").disabled=false
	get_node("NoButton").disabled=false

func _ready():
	
	get_node("YesButton").visible=false
	get_node("NoButton").visible=false
	
	get_node("Voices").play()

