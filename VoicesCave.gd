extends Node2D

onready var parent=get_parent()
onready var question_button=parent.get_node("Question")


func _ready():
	var pozitive_guard=[
		get_node("CaveGuard/GuardPoz1"),
		get_node("CaveGuard/GuardPoz2"),
		get_node("CaveGuard/GuardPoz3"),
		get_node("CaveGuard/GuardPoz4")
	]
	for voice in pozitive_guard:
		voice.connect("finished",parent,"reset_symbols")
	
	get_node("Narator/NaratorVoice23").connect("finished",get_node("Richard/RichardVoice14"),"play")
	get_node("Narator/NaratorVoice23").connect("finished",get_parent().get_node("PirateRed"),"start_move")
	
	get_node("Richard/RichardVoice14").connect("finished",get_node("CaveGuard/GuardVoice1"),"play")
	get_node("Richard/RichardVoice14").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice14").connect("finished",parent.get_node("Groot"),"start_move")
	
	get_node("CaveGuard/GuardVoice1").connect("finished",get_node("CaveGuard/GuardVoice2"),"play")
	get_node("CaveGuard/GuardVoice2").connect("finished",get_node("Richard/RichardVoice15"),"play")
	get_node("CaveGuard/GuardVoice2").connect("finished",parent.get_node("Groot"),"stop_move")
	get_node("CaveGuard/GuardVoice2").connect("finished",parent.get_node("PirateRed"),"start_move")
	
	get_node("Richard/RichardVoice15").connect("finished",get_node("CaveGuard/GuardVoice3"),"play")
	get_node("Richard/RichardVoice15").connect("finished",parent.get_node("PirateRed"),"stop_move")
	get_node("Richard/RichardVoice15").connect("finished",parent.get_node("Groot"),"start_move")
	
	get_node("CaveGuard/GuardVoice3").connect("finished",parent,"set_current_question",[1])
	get_node("CaveGuard/GuardVoice3").connect("finished",parent.get_node("Groot"),"stop_move")
	get_node("CaveGuard/GuardVoice3").connect("finished",question_button,"set_sound_ref",[get_node("CaveGuard/GuardVoice3")])
	get_node("CaveGuard/GuardVoice3").connect("finished",question_button,"enable_button")
	get_node("CaveGuard/GuardVoice3").connect("finished",parent,"enable_buttons")
	
	
	pozitive_guard[0].connect("finished",get_node("CaveGuard/GuardVoice4"),"play")
	pozitive_guard[0].connect("finished",parent.get_node("Groot"),"start_move")
	get_node("CaveGuard/GuardVoice4").connect("finished",parent.get_node("Groot"),"stop_move")
	get_node("CaveGuard/GuardVoice4").connect("finished",parent,"set_current_question",[2])
	get_node("CaveGuard/GuardVoice4").connect("finished",question_button,"set_sound_ref",[get_node("CaveGuard/GuardVoice4")])
	get_node("CaveGuard/GuardVoice4").connect("finished",parent,"enable_buttons")
	
	pozitive_guard[1].connect("finished",get_node("CaveGuard/GuardVoice5"),"play")
	pozitive_guard[1].connect("finished",parent.get_node("Groot"),"start_move")
	get_node("CaveGuard/GuardVoice5").connect("finished",parent.get_node("Groot"),"stop_move")
	get_node("CaveGuard/GuardVoice5").connect("finished",parent,"set_current_question",[3])
	get_node("CaveGuard/GuardVoice5").connect("finished",question_button,"set_sound_ref",[get_node("CaveGuard/GuardVoice5")])
	get_node("CaveGuard/GuardVoice5").connect("finished",parent,"enable_buttons")	
	
	pozitive_guard[2].connect("finished",get_node("CaveGuard/GuardVoice6"),"play")
	pozitive_guard[2].connect("finished",parent.get_node("Groot"),"start_move")
	get_node("CaveGuard/GuardVoice6").connect("finished",parent.get_node("Groot"),"stop_move")
	get_node("CaveGuard/GuardVoice6").connect("finished",parent,"set_current_question",[4])
	get_node("CaveGuard/GuardVoice6").connect("finished",question_button,"set_sound_ref",[get_node("CaveGuard/GuardVoice6")])
	get_node("CaveGuard/GuardVoice6").connect("finished",parent,"enable_buttons")		
		
	pozitive_guard[3].connect("finished",get_node("CaveGuard/GuardVoice7"),"play")
	pozitive_guard[3].connect("finished",parent.get_node("Groot"),"start_move")
	get_node("CaveGuard/GuardVoice7").connect("finished",parent.get_node("Groot"),"stop_move")
	
	get_node("CaveGuard/GuardVoice7").connect("finished",parent,"next_scene")

func play():
	get_node("Narator/NaratorVoice23").play()
	
func stop_sounds():
	for node in get_node("CaveGuard").get_children():
		node.stop()		
		
	get_parent().get_node("Question/SoundRef").stop()
