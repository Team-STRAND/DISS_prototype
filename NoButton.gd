extends TextureButton


func _ready():
	get_node("RightSymbol").visible=false
	#get_parent().get_node("Voices/Luigi/LuigiVoice4").connect("finished",self,"go_next")

func go_next():
	get_tree().change_scene("res://RiverScene.tscn")

func _on_NoButton_pressed():
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("DingSound").play()
	get_parent().get_node("Voices/Luigi/LuigiVoice4").play()
	get_node("RightSymbol").visible=true
	disabled=true
	get_parent().get_node("PirateBlue").start_move()
	Score.boat_on_land_score+=10

func _on_AnimationPlayerPirates_animation_finished(anim_name):
	go_next()


func _on_NoButton_mouse_entered():
	if !get_parent().get_node("Voices/Narator/NaratorVoice14").is_playing() && disabled==false:
		get_parent().get_node("Voices").stop_sounds()
		get_parent().get_node("Voices/Narator/NaratorVoice14").play()
