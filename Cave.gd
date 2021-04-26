extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimationPlayerPirates").play("Move")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PirateBlue_pressed():
	get_node("Groot/AnimationPlayerGroot").play("GrootMove")


func _on_AnimationPlayerGroot_animation_finished(anim_name):
	get_node("AnimationPlayerPirates").play("GoInsideCave")


func _on_AnimationPlayerPirates_animation_finished(anim_name):
	if(anim_name=="GoInsideCave"):
		get_tree().change_scene("res://CaveInside.tscn")
