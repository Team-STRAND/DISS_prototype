extends TextureButton

func _on_TextureButton3_pressed():
	get_parent().get_node("DingSound").play()
	get_tree().change_scene("res://WoodsScene.tscn")
