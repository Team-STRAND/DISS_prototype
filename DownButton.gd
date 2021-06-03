extends TextureButton

func _ready():
	get_child(0).visible=false



func _on_DownButton_pressed():
	get_child(0).visible=true
	get_parent().get_node("WrongSound").play()
	Score.island_top_score-=2
	disabled=true
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("Voices/Narator/NaratorVoice6").play()
