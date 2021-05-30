extends Node2D

onready var richard=get_node("Richard")

func play_richard(index):
	richard.get_node("RichardVoice"+str(index)).play()

func _ready():	
	get_node("Richard/RichardVoice1").connect("finished",get_node("Richard/RichardVoice2"),"play")
	get_node("Richard/RichardVoice2").connect("finished",get_node("Luigi/LuigiVoice1"),"play")
	get_node("Luigi/LuigiVoice1").connect("finished",get_node("Francesca/FrancescaVoice1"),"play")
	get_node("Francesca/FrancescaVoice1").connect("finished",get_node("Richard/RichardVoice3"),"play")
	get_node("Richard/RichardVoice3").connect("finished",get_node("Luigi/LuigiVoice2"),"play")
	get_node("Luigi/LuigiVoice2").connect("finished",get_node("Francesca/FrancescaVoice2"),"play")
	get_node("Luigi/LuigiVoice2").connect("finished",get_parent(),"play_parrot_animation")
	#insert parrot here
	get_node("Francesca/FrancescaVoice2").connect("finished",get_node("Richard/RichardVoice4"),"play")
	#parrot again
	
	
func play():
	play_richard(1)

