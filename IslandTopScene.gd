extends Node2D

func _ready():
	get_node("Parrot/AnimationPlayerParrot").play("Entrance")
	get_node("Voices").play()
