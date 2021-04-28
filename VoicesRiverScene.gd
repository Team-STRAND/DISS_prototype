extends Node2D


func _ready():
	get_node("Francesca/FrancescaVoice4").connect("finished",get_node("Richard/RichardVoice10"),"play")
	get_node("Richard/RichardVoice10").connect("finished",get_node("Luigi/LuigiVoice5"),"play")
	#insert fish here
	get_node("Luigi/LuigiVoice5").connect("finished",get_node("Luigi/LuigiVoice6"),"play")
	
	get_node("Luigi/LuigiVoice6").connect("finished",get_parent(),"display_numbers")

func play():
	get_node("Francesca/FrancescaVoice4").play()
