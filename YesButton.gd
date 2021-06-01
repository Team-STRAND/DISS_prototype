extends TextureButton

func _ready():
	get_node("WrongAnswer").visible=false;

func _on_YesButton_pressed():
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("WrongSound").play()
	get_parent().get_node("Voices/Luigi/LuigiVoice3").play()
	get_node("WrongAnswer").visible=true;
	disabled=true
	get_parent().get_node("PirateBlue").start_move()


func _on_YesButton_mouse_entered():
	if !get_parent().get_node("Voices/Narator/NaratorVoice13").is_playing() && disabled==false:
		get_parent().get_node("Voices").stop_sounds()
		get_parent().get_node("Voices/Narator/NaratorVoice13").play()
