extends Node2D


func _ready():
	get_node("Voices").play()

func play_parrot_animation():
	get_node("AnimationPlayerParrot").play("Fly")
