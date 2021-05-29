extends Node2D



func _ready():
	get_node("TextureButton1").visible=false
	get_node("TextureButton2").visible=false
	get_node("TextureButton3").visible=false
	
	get_node("Voices").play()

func display_numbers():
	get_node("TextureButton1").visible=true
	get_node("TextureButton2").visible=true
	get_node("TextureButton3").visible=true

