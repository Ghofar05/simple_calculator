extends Control

@onready var angka1 = $VBoxContainer/VBoxContainer/HBoxContainer/angka1
@onready var operasi = $VBoxContainer/VBoxContainer/HBoxContainer/operasi
@onready var angka2 = $VBoxContainer/VBoxContainer/HBoxContainer/angka2
@onready var hasil = $VBoxContainer/VBoxContainer/hasil
@onready var one = $VBoxContainer/BoxContainer2/GridContainer/Button
@onready var two = $VBoxContainer/BoxContainer2/GridContainer/Button2
@onready var three = $VBoxContainer/BoxContainer2/GridContainer/Button3
@onready var four =$VBoxContainer/BoxContainer2/GridContainer/Button4
@onready var five =$VBoxContainer/BoxContainer2/GridContainer/Button5
@onready var six =$VBoxContainer/BoxContainer2/GridContainer/Button6
@onready var seven =$VBoxContainer/BoxContainer2/GridContainer/Button7
@onready var eight =$VBoxContainer/BoxContainer2/GridContainer/Button8
@onready var nine =$VBoxContainer/BoxContainer2/GridContainer/Button9
@onready var zero = $VBoxContainer/BoxContainer2/GridContainer/Button10
@onready var enter = $VBoxContainer/BoxContainer2/GridContainer/enter
@onready var tambah =$VBoxContainer/BoxContainer2/GridContainer2/Buttonplus
@onready var kurang =$VBoxContainer/BoxContainer2/GridContainer2/Buttondecre
@onready var kali =$VBoxContainer/BoxContainer2/GridContainer2/Buttonmulti
@onready var bagi = $VBoxContainer/BoxContainer2/GridContainer2/Buttondevi
@onready var modulus = $VBoxContainer/BoxContainer2/GridContainer2/Buttonmodulus
@onready var clear = $VBoxContainer/BoxContainer2/GridContainer2/ButtonC


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	# Replace with function body.

var statoper = false
var arr = []
var store1
var store2
var oper = ""
var result
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if statoper:
		angka2.text = "".join(arr)
		operasi.text = str(oper)
		enter.disabled = false
	else :
		angka1.text = "".join(arr)
		enter.disabled = true
		
	print(arr)
	
	






func _on_button_button_down():
	arr.append("1")
	pass # Replace with function body.


func _on_button_2_button_down():
	arr.append("2")
	pass # Replace with function body.


func _on_button_3_button_down():
	arr.append("3")
	pass # Replace with function body.


func _on_button_4_button_down():
	arr.append("4")
	pass # Replace with function body.


func _on_button_5_button_down():
	arr.append("5")
	pass # Replace with function body.


func _on_button_6_button_down():
	arr.append("6")
	pass # Replace with function body.


func _on_button_7_button_down():
	arr.append("7")
	pass # Replace with function body.


func _on_button_8_button_down():
	arr.append("8")
	pass # Replace with function body.


func _on_button_9_button_down():
	arr.append("9")
	pass # Replace with function body.


func _on_button_10_button_down():
	arr.append("0")
	pass # Replace with function body.


func _on_button_11_button_down():
	arr.append(".")
	pass # Replace with function body.









func _on_enter_button_down():
	store2 = int(angka2.text)
	if oper == "+":
		result = store1 + store2
	elif oper == "*":
		result = store1 * store2
	elif oper == "/":
		result = store1 / store2
	elif oper == "-":
		result = store1 - store2
	elif oper == "%":
		result = store1 % store2
	
	hasil.text = str(result)
	
	
	pass # Replace with function body.
	
func _on_buttonplus_button_down():
	oper = "+"
	statoper = true
	
	store1 = int(angka1.text)
	arr.clear()
	angka1.text = str(store1)
	#angka2.text = "".join(arr)
	pass # Replace with function body.

func _on_buttonmulti_button_down():
	oper = "*"
	statoper = true
	
	store1 = int(angka1.text)
	arr.clear()
	angka1.text = str(store1)
	
	pass # Replace with function body.


func _on_buttondecre_button_down():
	oper = "-"
	statoper = true
	
	store1 = int(angka1.text)
	arr.clear()
	angka1.text = str(store1)
	pass # Replace with function body.


func _on_buttondevi_button_down():
	oper = "/"
	statoper = true
	
	store1 = int(angka1.text)
	arr.clear()
	angka1.text = str(store1)
	pass # Replace with function body.


func _on_buttonmodulus_button_down():
	oper = "%"
	statoper = true
	
	store1 = int(angka1.text)
	arr.clear()
	angka1.text = str(store1)
	pass # Replace with function body.


func _on_button_c_button_down():
	
	angka2.text = ""
	angka1.text = ""
	hasil.text = "0"
	operasi.text = ""
	arr.clear()
	statoper = false
	pass # Replace with function body.
