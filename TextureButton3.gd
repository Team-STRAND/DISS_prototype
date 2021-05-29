extends TextureButton

func _on_TextureButton3_pressed():
	get_parent().get_node("DingSound").play()
	get_parent().get_node("Bridge/AnimationPlayerBridge").play("BridgeSpawn")
	Score.total_score+=10
