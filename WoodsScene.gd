extends Node2D

func _ready():
	get_node("AnimationPlayerCharacterMoving").play("Move")
	get_node("Voices").play()
	get_node("Voices/Francesca/FrancescaVoice6").connect("finished",self,"move2")

func move2():
	get_node("AnimationPlayerCharacterMoving").play("Move2")

func _on_Giraffe_pressed():	
	get_node("Giraffe").disabled=true
	get_node("Voices/Francesca/FrancescaVoice6").play()
	get_node("PirateGirl").start_move()


func _on_AnimationPlayerCharacterMoving_animation_finished(anim_name):
	if(anim_name=="Move2"):
		get_tree().change_scene("res://MapInTree.tscn")
