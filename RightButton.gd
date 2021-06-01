extends TextureButton


func _ready():
	get_node("RightSymbol").visible=false

func _on_RightButton_pressed():
	get_parent().get_node("Parrot/AnimationPlayerParrot").play("FlyingParrot")
	get_node("DingSound").play()
	get_node("RightSymbol").visible=true
	disabled=true
	get_parent().get_node("LeftButton").disabled=true
	Score.island_top_score+=10
	get_parent().get_node("Voices/Narator/NaratorVoice10").play()
