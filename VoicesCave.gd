extends Node2D

onready var parent=get_parent()

func _ready():
	
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

func play():
	get_node("Richard/RichardVoice14").play()
	get_parent().get_node("PirateRed").start_move()
