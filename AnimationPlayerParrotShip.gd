extends AnimationPlayer


func _ready():
	pass # Replace with function body.


func _on_AnimationPlayerParrotShip_animation_finished(anim_name):
	if anim_name=="ParrotUp":
		get_tree().change_scene("res://IslandTopScene.tscn")
