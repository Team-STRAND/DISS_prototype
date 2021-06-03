extends TextureButton

func _ready():
	get_child(0).visible=false
	get_parent().get_node("Voices/Fish/FishVoice4").connect("finished",get_parent().get_node("Bridge/AnimationPlayerBridge"),"play",["BridgeSpawn"])

func _on_TextureButton3_pressed():
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("DingSound").play()
	get_child(0).visible=true
	disabled=true
	#get_parent().get_node("Bridge/AnimationPlayerBridge").play("BridgeSpawn")
	Score.river_score+=10
	get_parent().get_node("Voices").stop_sounds()
	get_parent().get_node("Voices/Fish/FishVoice4").play()
	get_parent().get_node("FishYellow").start_move()
