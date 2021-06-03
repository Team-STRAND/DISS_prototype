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
	get_node("Luigi/LuigiVoice5").connect("finished",get_node("Fish/FishVoice1"),"play")
	get_node("Luigi/LuigiVoice5").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	get_node("Luigi/LuigiVoice5").connect("finished",parent.get_node("FishYellow"),"start_move")
	
	get_node("Fish/FishVoice1").connect("finished",get_node("Luigi/LuigiVoice6"),"play")
	get_node("Fish/FishVoice1").connect("finished",parent.get_node("FishYellow"),"stop_move")
	get_node("Fish/FishVoice1").connect("finished",parent.get_node("PirateBlue"),"start_move")
	
	get_node("Luigi/LuigiVoice6").connect("finished",get_node("Fish/FishVoice2"),"play")
	get_node("Luigi/LuigiVoice6").connect("finished",parent.get_node("PirateBlue"),"stop_move")
	get_node("Luigi/LuigiVoice6").connect("finished",parent.get_node("FishYellow"),"start_move")
	
	get_node("Fish/FishVoice2").connect("finished",get_parent(),"display_numbers")
	get_node("Fish/FishVoice2").connect("finished",parent.get_node("FishYellow"),"stop_move")
	
	get_node("Fish/FishVoice2").connect("finished",get_node("Narator/NaratorVoice15"),"play")
	
	get_node("Narator/NaratorVoice15").connect("finished",get_parent().get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice15")])
	get_node("Narator/NaratorVoice15").connect("finished",get_parent().get_node("Question"),"enable_button")
	
	get_node("Fish/FishVoice3").connect("finished",parent.get_node("FishYellow"),"stop_move")
	get_node("Fish/FishVoice4").connect("finished",parent.get_node("FishYellow"),"stop_move")
	get_node("Fish/FishVoice5").connect("finished",parent.get_node("FishYellow"),"stop_move")
	
func play():
	get_node("Francesca/FrancescaVoice4").play()	
	parent.get_node("PirateGirl").start_move()
	
func stop_sounds():
	get_node("Narator/NaratorVoice15").stop()
	get_node("Fish/FishVoice3").stop()
	get_node("Fish/FishVoice4").stop()
