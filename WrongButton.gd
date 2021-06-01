extends TextureButton


func _ready():
	get_child(0).visible=false
	

func _on_Button_pressed():
	get_child(0).visible=true
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("WrongSound").play()
	disabled=true
	Score.river_score-=3
	
	get_parent().get_node("Voices/Fish/FishVoice3").play()
	get_parent().get_node("FishYellow").start_move()

