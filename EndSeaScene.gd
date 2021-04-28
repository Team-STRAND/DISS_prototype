extends Node2D



func _ready():
	get_node("AnimationPlayer").play("ShipSailing")
	get_node("WaveSound").play()
	get_node("Voices").play()




func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://sea.tscn")
