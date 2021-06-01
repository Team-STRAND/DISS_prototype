extends Node2D

func _ready():
	get_node("Parrot/AnimationPlayerParrot").play("Entrance")
	get_node("Voices").play()
	get_node("LeftButton").visible=false
	get_node("RightButton").visible=false
	
func enable_arrow_buttons():
	get_node("LeftButton").visible=true
	get_node("RightButton").visible=true
