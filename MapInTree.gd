extends Node2D


func _ready():
	get_node("AnimationPlayerCharacterMoving").play("Move")
	
	get_node("Voices/Richard/RichardVoice12").connect("finished",get_node("AnimationPlayerParrot"),"play",["MoveToMap"])

func next_scene():
	get_tree().change_scene("res://Cave.tscn")

func _on_AnimationPlayerCharacterMoving_animation_finished(anim_name):
	get_node("Voices").play_voices()

func _on_AnimationPlayerParrot_animation_finished(anim_name):
	next_scene()
