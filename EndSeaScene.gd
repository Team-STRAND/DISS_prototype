extends Node2D



func _ready():
	get_node("AnimationPlayer").play("ShipSailing")
	get_node("WaveSound").play()
	get_node("Voices").play()
	Score.write_to_file()



func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://sea.tscn")
