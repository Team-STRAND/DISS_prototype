extends AnimationPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_AnimationPlayerPirateBlue_animation_finished(anim_name):		
	get_tree().change_scene("res://WoodsScene.tscn")
