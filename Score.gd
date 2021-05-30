extends Node

var child_name="TEST SUBJECT"
var total_score=0
var boat_score=0
var island_top_score=0
var boat_on_land_score=0
var river_score=0
var jungle_score=0
var cave_entrace_score=0
var season_score=0

var symbol_name=""

func _ready():
	pass # Replace with function body.

func write_to_file():

	var year=str(OS.get_date()["year"])
	var month=str(OS.get_date()["month"])
	var day=str(OS.get_date()["day"])
	var file_name="res://Rezultat-"+day+"-"+month+"-"+year+".html"
	
	var text=""
	
	var file = File.new()
	file.open(file_name, file.READ_WRITE)
	var new_file=false
	if !file.is_open():
		new_file=true
		file.open(file_name, file.WRITE)
		
		text=add_html_header(text)
		text=add_table_header(text)

	if new_file==false:
		file.seek(file.get_len()-table_end.length()-html_end.length())
		
	total_score=boat_score+island_top_score+river_score+cave_entrace_score+season_score+jungle_score
#

	text=add_tr(text)
	text=add_td_item(text,child_name)
	text=add_td_item(text,boat_score)
	text=add_td_item(text,island_top_score)
	text=add_td_item(text,boat_on_land_score)
	text=add_td_item(text,river_score)
	text=add_td_item(text,jungle_score)
	text=add_td_item(text,season_score)
	text=add_td_item(text,cave_entrace_score)
	text=add_td_item(text,total_score)
	text=add_tr_end(text)

	text=add_table_end(text)
	text=add_html_end(text)
	
	file.store_string(text)
	file.close()

func add_tr(text):
	text+="<tr>"
	return text
	
func add_tr_end(text):
	text+="</tr>"
	return text

func add_td_item(text,value):
	text+="<td>"
	text+=str(value)
	text+="</td>"
	return text
	
func add_html_header(text):
	text+= \
	"""
	<!DOCTYPE html>
	<html>
	<head>
		<style>
		body {
		  background-color: linen;
		}
		table, th, td {
			border: 1px solid black;
		}
		</style>
	</head>
	"""
	return text

func add_table_header(text):	
	text+=\
	"""
	<body>
		<table>
			<tr>
				<th>Nume si prenume</th>
				<th>Alegerea formelor</th>
				<th>Directiile papagalului</th>
				<th>Corabia pe uscat</th>
				<th>Pestii din rau</th>
				<th>Animalele din padure</th>
				<th>Ghicitoarea</th>
				<th>Intrarea in pestera</th>
				<th>Total</th>
			</tr>
	"""
	return text

var table_end=\
	"""	
		</table>
	</body>
	"""

func add_table_end(text):
	text+=table_end
	return text
	
var html_end="</html>"

func add_html_end(text):
	text+=html_end

	return text
