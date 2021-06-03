extends Node2D

var state="none"

func _ready():
	read_symbols_from_json()
	

func start_ship():
	get_node("Path2D/PathFollow2D/Ship").start()

func display_buttons():
	get_node("CreateAccountButton/AnimationPlayer").play_backwards("FadeButton")
	get_node("LogInButton/AnimationPlayer").play_backwards("FadeButton")
	get_node("PlayButton/AnimationPlayer").play_backwards("FadeButton")
	get_node("Reset/AnimationPlayer").play_backwards("FadeButton")

func remove_buttons():
	get_node("CreateAccountButton/AnimationPlayer").play("FadeButton")
	get_node("LogInButton/AnimationPlayer").play("FadeButton")
	get_node("PlayButton/AnimationPlayer").play("FadeButton")

func _on_TextEdit_focus_entered():
	get_node("TextEdit").text=""

func show_main_screen(origin):
	if origin=="login":
		get_node("ScrollSymbolsAuth/AnimationPlayer").play("SymbolScrollRemove")
	elif origin=="create_account":
		get_node("ScrollSymbols/AnimationPlayer").play("SymbolScrollRemove")
		
	get_node("Title/AnimationPlayer").play_backwards("TitleFade")	
	
	display_buttons()

func show_create_account_scroll():
	remove_buttons()
	state="create_account"
	get_node("Title/AnimationPlayer").play("TitleFade")
	get_node("ScrollSymbols/AnimationPlayer").play_backwards("SymbolScrollRemove")
	get_node("Reset/AnimationPlayer").play("FadeButton")
	
	Score.child_name=get_node("TextEdit").text

	
func show_login_scroll():
	remove_buttons()
	read_symbols_from_json()
	state="login"
	get_node("Title/AnimationPlayer").play("TitleFade")
	get_node("ScrollSymbolsAuth/AnimationPlayer").play_backwards("SymbolScrollRemove")
	get_node("Reset/AnimationPlayer").play("FadeButton")
	
func play_pressed():
	remove_buttons()
	get_node("Title/AnimationPlayer").play("TitleFade")
	get_node("Reset/AnimationPlayer").play("FadeButton")
	write_symbols_to_json()
	start_ship()
	get_node("Voices/Narator/NaratorVoice1").stop()
	get_node("Voices/Narator/NaratorVoice2").play()
	
func symbol_pressed():
	write_symbols_to_json()
	get_node("ScrollSymbols/AnimationPlayer").play("SymbolScrollRemove")
	start_ship()

func set_text_edit(symbol_name):
	var file_name="symbols.json"
	var file = File.new()
	file.open(file_name,File.READ)
	
	var symbol_name_pair={}
	if file.is_open():
		symbol_name_pair=JSON.parse(file.get_as_text()).result
	
	var child_name=symbol_name_pair[symbol_name]
	get_node("TextEdit").text=child_name
	
	file.close()

func read_symbols_from_json():
	var file_name="symbols.json"
	var file = File.new()
	file.open(file_name,File.READ)
	
	var symbol_name_pair={}
	if file.is_open():
		symbol_name_pair=JSON.parse(file.get_as_text()).result
	
	for symbol in symbol_name_pair.keys():
		if symbol!="":
			get_node("ScrollSymbols/"+str(symbol)).visible=false
			get_node("ScrollSymbolsAuth/"+str(symbol)).visible=true
		
	file.close()
	
	
func write_symbols_to_json():
	var file_name="symbols.json"
	var file = File.new()
	file.open(file_name, file.READ_WRITE)
	var symbol_name_pair={}
	if file.is_open():
		symbol_name_pair=JSON.parse(file.get_as_text()).result
	if !file.is_open():
		file.open(file_name, file.WRITE)
		
	symbol_name_pair[Score.symbol_name]=Score.child_name
	
	file.store_string(JSON.print(symbol_name_pair,"\t"))
	file.close()
	
func _on_Back_pressed():
	show_main_screen(state)


func _on_Reset_pressed():
	var file_name="symbols.json"
	var file = File.new()
	file.open(file_name, file.WRITE)
	var symbol_name_pair={}

	file.store_string(JSON.print(symbol_name_pair,"\t"))
	file.close()
	
	for i in range(1,26):
		get_node("ScrollSymbols/Symbol"+str(i)).visible=true
		get_node("ScrollSymbolsAuth/Symbol"+str(i)).visible=false
