extends Node2D

enum QUESTION{
	none,
	height,
	animal,
	clothes
}

var current_question=QUESTION.none

onready var pirate_red_right_symbol=get_node("PirateRed/RightSymbol")
onready var pirate_red_wrong_symbol=get_node("PirateRed/WrongSymbol")

onready var pirate_blue_right_symbol=get_node("PirateBlue/RightSymbol")
onready var pirate_blue_wrong_symbol=get_node("PirateBlue/WrongSymbol")

onready var pirate_girl_right_symbol=get_node("PirateGirl/RightSymbol")
onready var pirate_girl_wrong_symbol=get_node("PirateGirl/WrongSymbol")

func _ready():
	get_node("AnimationPlayerPirates").play("Move")
	
	pirate_red_right_symbol.visible=false
	pirate_red_wrong_symbol.visible=false

	pirate_blue_right_symbol.visible=false
	pirate_blue_wrong_symbol.visible=false

	pirate_girl_right_symbol.visible=false
	pirate_girl_wrong_symbol.visible=false


func _on_PirateBlue_pressed():
	match current_question:
		QUESTION.height:
			get_node("Groot/AnimationPlayerGroot").play("GrootMove")
		QUESTION.animal:
			get_node("Groot/AnimationPlayerGroot").play("GrootMove")
		QUESTION.clothes:	
			get_node("Groot/AnimationPlayerGroot").play("GrootMove")

func _on_PirateRed_pressed():
	pass # Replace with function body.

func _on_PirateGirl_pressed():
	pass # Replace with function body.


func _on_AnimationPlayerGroot_animation_finished(anim_name):
	get_node("AnimationPlayerPirates").play("GoInsideCave")

func _on_AnimationPlayerPirates_animation_finished(anim_name):
	if(anim_name=="GoInsideCave"):
		get_tree().change_scene("res://CaveInside.tscn")
	elif(anim_name=="Move"):
		get_node("Voices").play()


