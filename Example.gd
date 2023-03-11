extends Control

func _ready():
	$CenterContainer/HBoxContainer/Label.text = Get_os_name.os_name()
	$CenterContainer/HBoxContainer/TextureRect.texture = load(Get_os_name.os_logo())
