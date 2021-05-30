extends TextureButton

func _ready():
	visible=false

func play_sound():
	get_node("SoundRef").play()

func enable_button():
	visible=true
	disabled=false

func set_sound_ref(ref):
	get_node("SoundRef").stream=ref.stream

func _on_Question_pressed():
	disabled=true
	get_node("SoundRef").connect("finished",self,"enable_button")
	play_sound()
