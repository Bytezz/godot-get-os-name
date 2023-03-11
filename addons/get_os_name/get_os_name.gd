## Coded by Bytez
## https://github.com/bytezz/godot-get-os-name
## ----
## Get a more specifically OS name
## (for Godot Game Engine).

extends Node
class_name Get_os_name

static func os_name(getdistro:bool=true, gds4:bool=false) -> String:
	var name : String = OS.get_name()
	var out : Array
	
	if name == "X11":
		OS.execute("uname", ["-s"], true, out)
		name = out[0].strip_edges()
		
		if name == "Linux" and getdistro:
			var f = ConfigFile.new()
			f.load("/etc/os-release")
			name = f.get_value("", "NAME", "Linux")
	
	# If true, show names like Godot 4 OS.get_name()
	if gds4:
		if name == "HTML5":
			name = "Web"
		if name == "OSX":
			name = "macOS"
	
	return name

static func os_logo(name:String=""):
	if name == "":
		name = os_name(false, true)
	elif name == "HTML5":
		name = "Web"
	elif name == "OSX":
		name = "macOS"
	elif name == "UWP":
		name = "Windows"
	
	return "res://addons/get_os_name/logo/"+name.to_lower()+".png"
