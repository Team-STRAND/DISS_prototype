extends TextureButton


func _ready():
	if get_parent().name=="ScrollSymbolsAuth":
		visible=false;
	connect("pressed",self,"_on_Symbol_pressed")

func _on_Symbol_pressed():
	if get_parent().name=="ScrollSymbols":
		Score.symbol_name=name
		visible=false
		get_parent().get_parent().show_main_screen("create_account")
		get_parent().get_parent().write_symbols_to_json()
	elif get_parent().name=="ScrollSymbolsAuth":
		Score.symbol_name=name
		get_parent().get_parent().set_text_edit(name)
		get_parent().get_parent().show_main_screen("login")
