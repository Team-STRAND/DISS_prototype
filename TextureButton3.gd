extends TextureButton

func _ready():
	get_child(0).visible=false

func _on_TextureButton3_pressed():
	get_parent().get_node("DingSound").play()
	get_child(0).visible=true
	get_parent().get_node("Bridge/AnimationPlayerBridge").play("BridgeSpawn")
	Score.river_score+=10
