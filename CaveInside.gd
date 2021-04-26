extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimationPlayerPirates").play("Move")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayerPirates_animation_finished(anim_name):
	get_node("AnimationPlayerFish").play("Move")


func _on_AnimationPlayerFish_animation_finished(anim_name):
	get_node("AnimationPlayerShip").play("Move")


func _on_AnimationPlayerShip_animation_finished(anim_name):
	get_tree().change_scene("res://EndSeaScene.tscn")
