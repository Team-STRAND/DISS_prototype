extends TextureButton


func _ready():
	get_child(0).visible=false
	

func _on_Button_pressed():
	get_child(0).visible=true
	get_parent().get_parent().get_parent().get_node("WrongSound").play()
