extends Node2D

var valid_objects_clicked=0

func _ready():
	get_node("Bottle/RightSymbol").visible=false
	get_node("Branch/WrongSymbol").visible=false
	get_node("PirateHat/RightSymbol").visible=false

func next_scene():
	get_tree().change_scene("res://SeasonsMap.tscn")

func _on_PirateHat_pressed():

	get_node("PirateHat/RightSymbol").visible=true
	get_node("PirateHat").disabled=true
	get_node("DingSound").play()
	Score.trash_score+=10
	valid_objects_clicked+=1
	if(valid_objects_clicked==2):
		next_scene()

func _on_Branch_pressed():
	get_node("Branch/WrongSymbol").visible=true
	get_node("Branch").disabled=true
	get_node("WrongSound").play()
	Score.trash_score-=10

func _on_Bottle_pressed():
	get_node("Bottle/RightSymbol").visible=true
	get_node("Bottle").disabled=true
	get_node("DingSound").play()
	Score.trash_score+=10
	valid_objects_clicked+=1
	if(valid_objects_clicked==2):
		next_scene()
