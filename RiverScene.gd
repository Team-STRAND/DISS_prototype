extends Node2D

#var move_pirate_red=false
#var move_pirate_blue=false
#var move_pirate_girl=false
#
#var character_move_offset= Vector2(0.0,6.0)
#var i=0;
#
#onready var pirate_red=get_node("PirateRed")
#onready var pirate_blue=get_node("PirateBlue")
#onready var pirate_girl=get_node("PirateGirl")
#
#func start_audio_move_character(name):
#	if name == "pirate_red":
#		move_pirate_red=true;
#	elif name == "pirate_blue":
#		move_pirate_blue=true;
#	elif name == "priate_girl":
#		move_pirate_girl=true
#
#
#func stop_audio_move_character(name):
#	if name == "pirate_red":
#		move_pirate_red=false;
#	elif name == "pirate_blue":
#		move_pirate_blue=false;
#	elif name == "priate_girl":
#		move_pirate_girl=false


func _ready():
	get_node("TextureButton1").visible=false
	get_node("TextureButton2").visible=false
	get_node("TextureButton3").visible=false
	
	get_node("Voices").play()

func display_numbers():
	get_node("TextureButton1").visible=true
	get_node("TextureButton2").visible=true
	get_node("TextureButton3").visible=true

#func move_character(character,delta):
#		if(i%5==0):		
#			character_move_offset.y=sin(i)*35
#		i=i+1
#		print(character_move_offset)
#		character.set_position(character.get_position() + character_move_offset*delta)
#
#func _process(delta):
#	if(move_pirate_red):
#		move_character(pirate_red,delta)
#	elif(move_pirate_blue):
#		move_character(pirate_blue,delta)
#	elif(move_pirate_girl):
#		move_character(pirate_girl,delta)
#
