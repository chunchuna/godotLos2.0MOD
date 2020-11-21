extends Node2D
var name_="速度Mod"
var version=1.0
func _ready():
	print("MoD_System"+name_+"\n"+str(version)+"\n")
	var player =get_tree().get_root().find_node("player",true,false)
	player.speed=900
	print("速度Mod: 已经更新速度\n")
	
	
