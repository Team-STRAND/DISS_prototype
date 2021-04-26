extends Node2D

func _ready():
	get_node("AnimationPlayerCharacterMoving").play("Move")


func _on_Giraffe_pressed():
	get_node("AnimationPlayerCharacterMoving").play("Move2")
	get_node("Giraffe").disabled=true


func _on_AnimationPlayerCharacterMoving_animation_finished(anim_name):
	if(anim_name=="Move2"):
		get_tree().change_scene("res://SeasonsMap.tscn")
