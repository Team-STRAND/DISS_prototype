extends TextureButton

func _ready():
	get_node("WrongAnswer").visible=false;

func _on_YesButton_pressed():
	get_parent().get_node("WrongSound").play()
	get_node("WrongAnswer").visible=true;
