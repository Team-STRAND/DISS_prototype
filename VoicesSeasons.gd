extends Node2D


func _ready():
	get_node("Narator/NaratorVoice21").play()
	
	get_node("Narator/NaratorVoice21").connect("finished",get_node("Narator/NaratorVoice22"),"play")
	get_node("Narator/NaratorVoice22").connect("finished",get_parent().get_node("Question"),"set_sound_ref",[get_node("Narator/NaratorVoice22")])
	get_node("Narator/NaratorVoice22").connect("finished",get_parent().get_node("Question"),"enable_button")
	get_node("Narator/NaratorVoice22").connect("finished",get_parent(),"enable_buttons")
	
func stop_sounds():
	get_parent().get_node("Question/SoundRef").stop()
	get_node("Narator/NaratorVoiceNeg").stop()
	get_node("Narator/NaratorVoicePoz").stop()
	
	

