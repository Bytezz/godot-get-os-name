# Get OS Name

Get a more specifically OS name (for Godot Game Engine v3.x).

Uses "uname -a" to get *nix name. If Linux, search for distro name inside "/etc/os-release"

Also ships with OS icons as 500x500px white png.

## Usage

`Get_os_name.os_name(getdistro:bool=true, gds4:bool=false)`  
Which returns the name as a string. If getdistro is false will not search for Linux distro name. If gds4 is true, will convert Godot 3.x os.get_name() to Godot 4.x equivalent.

`Get_os_name.os_logo(name:String="")`  
Which return path to logo as a string. If no name provided as arg, will use os_name() to retrieve it.

## License

[LICENSE](LICENSE)
