extends Node2D



func _ready():
	pass # Replace with function body.


func _on_TextEdit_focus_entered():
	get_node("TextEdit").text=""
