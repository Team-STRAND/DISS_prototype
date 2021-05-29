extends Node2D

onready var parent=get_parent()

func _ready():
	get_node("Francesca/FrancescaVoice4").connect("finished",get_node("Richard/RichardVoice10"),"play")
	get_node("Francesca/FrancescaVoice4").connect("finished",parent.get_node("PirateGirl"),"stop_move")
	get_node("Francesca/FrancescaVoice4").connect("finished",parent.get_node("PirateRed"),"start_move")
	
	get_node("Richard/RichardVoice10").connect("finished",get_node("Luigi/LuigiVoice5"),"play")
	get_node("Richard/RichardVoice10").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice10").connect("finished",parent.get_node("PirateBlue"),"start_move")
	
	
	#insert fish here
	get_node("Luigi/LuigiVoice5").connect("finished",get_node("Luigi/LuigiVoice6"),"play")
	
	get_node("Luigi/LuigiVoice6").connect("finished",get_parent(),"display_numbers")
	get_node("Luigi/LuigiVoice6").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	
func play():
	get_node("Francesca/FrancescaVoice4").play()	
	parent.get_node("PirateGirl").start_move()
