extends Node2D


func _ready():
	read_symbols_from_json()

func start_ship():
	get_node("Path2D/PathFollow2D/Ship").start()

func _on_TextEdit_focus_entered():
	get_node("TextEdit").text=""
	
func symbol_pressed():
	write_symbols_to_json()
	get_node("ScrollSymbols/AnimationPlayer").play("SymbolScrollRemove")
	start_ship()

func read_symbols_from_json():
	var file_name="symbols.json"
	var file = File.new()
	file.open(file_name,File.READ)
	
	var symbol_name_pair={}
	if file.is_open():
		symbol_name_pair=JSON.parse(file.get_as_text()).result
	
	for symbol in symbol_name_pair.keys():
		get_node("ScrollSymbols/"+str(symbol)).visible=false
	
	
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
	
