extends TextureButton

func _ready():
	get_child(0).visible=false



func _on_DownButton_pressed():
	get_child(0).visible=true
