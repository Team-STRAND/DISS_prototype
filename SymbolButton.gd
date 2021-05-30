extends TextureButton



func _ready():
	connect("pressed",self,"_on_Symbol_pressed")

func _on_Symbol_pressed():
	Score.symbol_name=name
	visible=false
	get_parent().get_parent().symbol_pressed()
