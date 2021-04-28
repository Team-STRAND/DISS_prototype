extends TextureButton


func _ready():
	get_parent().get_node("Voices/Luigi/LuigiVoice4").connect("finished",self,"go_next")

func go_next():
	get_tree().change_scene("res://RiverScene.tscn")

func _on_NoButton_pressed():
	get_parent().get_node("DingSound").play()
	get_parent().get_node("Voices/Luigi/LuigiVoice4").play()
	
