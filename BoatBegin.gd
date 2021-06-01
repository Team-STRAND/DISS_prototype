extends Node2D


func _ready():
	get_node("Voices").play()
	get_node("WaveSound").connect("finished",get_node("WaveSound"),"play")
	
func play_parrot_animation():
	get_node("AnimationPlayerParrot").play("Fly")
	
func next_scene():
		get_node("AnimationPlayerParrot").play("GoToShapes")

func _on_AnimationPlayerParrot_animation_finished(anim_name):
	if anim_name=="GoToShapes":
		get_tree().change_scene("res://ShapesScene.tscn")
