extends TextureButton

func _ready():
	get_child(0).visible=false



func _on_LeftButton_pressed():
	get_child(0).visible=true
	get_node("WrongSound").play()
	Score.island_top_score-=5
