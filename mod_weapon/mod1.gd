extends Node2D
var name_ ="武器增强Mod"  #Mod 名
var version =1.0		# Mod 版本


onready var ui =$UI


func _ready():
	print("Mods_#2020/10/22\n"+name_+"\n"+str(version)+"\n")
	# 加载UI
	remove_child(ui)
	var hud =get_tree().get_root().find_node("HUD",true,false)
	hud.add_child(ui)



func _physics_process(delta):
	# 修改子弹数量
	if Input.is_action_just_pressed("mod_e"):
		var num =get_parent().weapon_data
		num.allBulletNumber=100
		print("Change Bullet",num)
	pass
	
	
	# 修改武器为喷火枪	
	if Input.is_action_just_pressed("mod_r"):
		var weapon =get_tree().get_root().find_node("weaponNode",true,false)
		weapon.weapon_name="FireGun"
		weapon.LoadWeaponData()
		print("Get Fire Gun",weapon)	



