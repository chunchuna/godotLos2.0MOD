extends Node2D
var name_ ="改名MOD"  #Mod 名
var version =1.0		# Mod 版本
var active=false  # 是否激活
var is_change=false
var back_name


onready var player =get_tree().get_root().find_node("player",true,false)

onready var name_lable =player.get_node("Control/RichTextLabel")

func _ready():
	back_name=name_lable.bbcode_text
	pass
	

func _process(delta):
	if active and !is_change:
		name_lable.bbcode_text="[color=yellow][VIP]cc"
		print("改名成功")
		is_change=true
	
	if !active:
		name_lable.bbcode_text=back_name
		is_change=false
