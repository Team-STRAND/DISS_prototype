extends TextureButton


func _ready():
	get_node("RightSymbol").visible=false


func _on_UpButton_pressed():
	#get_parent().get_node("Parrot/AnimationPlayerParrotShip").play("ParrotUp")
	get_parent().get_node("DingSound").play()
	get_node("RightSymbol").visible=true
	disabled=true
	Score.island_top_score+=10
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("Voices/Narator/NaratorVoice7").play()
	get_parent().get_node("Voices/Narator/NaratorVoice7").connect("finished",get_parent().get_node("Parrot/AnimationPlayerParrotShip"),"play",["ParrotUp"])
