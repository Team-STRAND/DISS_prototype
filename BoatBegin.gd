extends Node2D


func _ready():
	get_node("Voices").play()
	get_node("WaveSound").connect("finished",get_node("WaveSound"),"play")
	
func play_parrot_animation():
	get_node("AnimationPlayerParrot").play("Fly")
	
func next_scene():
	get_tree().change_scene("res://ShapesScene.tscn")
