extends Node2D

onready var richard=get_node("Richard")
onready var parent=get_parent()

func play_richard(index):
	richard.get_node("RichardVoice"+str(index)).play()

func _ready():	
	get_node("Richard/RichardVoice1").connect("finished",get_node("Richard/RichardVoice2"),"play")
	get_node("Richard/RichardVoice2").connect("finished",get_node("Luigi/LuigiVoice1"),"play")
	get_node("Richard/RichardVoice2").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice2").connect("finished",parent.get_node("PirateBlue"),"start_move")
	
	get_node("Luigi/LuigiVoice1").connect("finished",get_node("Francesca/FrancescaVoice1"),"play")
	get_node("Luigi/LuigiVoice1").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	get_node("Luigi/LuigiVoice1").connect("finished",parent.get_node("PirateGirl"),"start_move")	
	
	get_node("Francesca/FrancescaVoice1").connect("finished",get_node("Richard/RichardVoice3"),"play")
	get_node("Francesca/FrancescaVoice1").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	get_node("Francesca/FrancescaVoice1").connect("finished",parent.get_node("PirateRed"),"start_move")
	
	get_node("Richard/RichardVoice3").connect("finished",get_node("Luigi/LuigiVoice2"),"play")
	get_node("Richard/RichardVoice3").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice3").connect("finished",parent.get_node("PirateBlue"),"start_move")
	
	get_node("Luigi/LuigiVoice2").connect("finished",get_node("Francesca/FrancescaVoice2"),"play")
	get_node("Luigi/LuigiVoice2").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	get_node("Luigi/LuigiVoice2").connect("finished",parent.get_node("PirateGirl"),"start_move")
	
	get_node("Luigi/LuigiVoice2").connect("finished",get_parent(),"play_parrot_animation")
	#insert parrot here
	get_node("Francesca/FrancescaVoice2").connect("finished",get_node("Richard/RichardVoice4"),"play")
	get_node("Francesca/FrancescaVoice2").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	get_node("Francesca/FrancescaVoice2").connect("finished",parent.get_node("PirateRed"),"start_move")
	#parrot again
	get_node("Richard/RichardVoice4").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice4").connect("finished",parent,"next_scene")
	
func play():
	play_richard(1)
	parent.get_node("PirateRed").start_move()

