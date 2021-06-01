extends AnimationPlayer


func _ready():
	pass # Replace with function body.



func _on_AnimationPlayerParrot_animation_finished(anim_name):
	if anim_name=="FlyingParrot":
		get_parent().get_parent().get_node("Ship/AnimationPlayerShip").play("ShipMoving")
