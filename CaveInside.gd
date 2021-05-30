extends Node2D

func _ready():
	get_node("AnimationPlayerPirates").play("Move")
	get_node("Voices").play()

	get_node("Voices/Francesca/FrancescaVoice8").connect("finished",self,"fishes_apear")
	
	get_node("Voices/Luigi/LuigiVoice9").connect("finished",self,"ship_moves")
	get_node("Voices/Luigi/LuigiVoice9").connect("finished",get_node("PirateBlue"),"stop_move")
	
	get_node("Voices/Richard/RichardVoice16").connect("finished",self,"go_next_scene")
	get_node("Voices/Richard/RichardVoice16").connect("finished",get_node("PirateRed"),"stop_move")

func fishes_apear():
	get_node("AnimationPlayerFish").play("Move")
	
func ship_moves():
	get_node("AnimationPlayerShip").play("Move")

func go_next_scene():
	get_tree().change_scene("res://EndSeaScene.tscn")

func _on_AnimationPlayerPirates_animation_finished(anim_name):
	pass

func _on_AnimationPlayerFish_animation_finished(anim_name):
	get_node("Voices/Luigi/LuigiVoice9").play()
	get_node("PirateBlue").start_move()


func _on_AnimationPlayerShip_animation_finished(anim_name):
	get_node("Voices/Richard/RichardVoice16").play()
	get_node("PirateRed").start_move()
