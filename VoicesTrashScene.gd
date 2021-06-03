extends Node2D

onready var parrot=get_parent().get_node("Parrot")

func _ready():
	get_node("Simon/VoiceSimon9").connect("finished",get_node("Simon/VoiceSimon10"),"play")
	get_node("Simon/VoiceSimon10").connect("finished",parrot,"stop_move")
	
	get_node("Simon/VoiceSimon10").connect("finished",get_node("Narator/NaratorVoice31"),"play")
	get_node("Narator/NaratorVoice31").connect("finished",get_parent().get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice31")])
	get_node("Narator/NaratorVoice31").connect("finished",get_parent().get_node("Question"),"enable_button")
	
func play():
	get_node("Simon/VoiceSimon9").play()
	parrot.start_move()
	
func stop_sounds():
	get_node("Narator/NaratorVoice31").stop()
	get_node("Simon/VoiceSimon11").stop()
	get_node("Simon/VoiceSimon12").stop()
	get_node("Simon/VoiceSimon12").stop()
	get_node("Simon/VoiceSimon13").stop()
	get_node("Simon/VoiceSimon9").stop()

