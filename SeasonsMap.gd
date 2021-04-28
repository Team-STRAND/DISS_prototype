extends Node2D


func _ready():
	get_node("Voices").play()


func _on_MapButton_pressed():
	get_tree().change_scene("res://Seasons.tscn")
