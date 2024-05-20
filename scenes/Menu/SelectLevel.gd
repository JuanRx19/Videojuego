class_name SelectLevel
extends Control

#@onready var start_level = preload("res://scenes/Level 1/main_level1.tscn") as PackedScene
#@onready var start_level2 = preload("res://scenes/Level 2/main_level2.tscn") as PackedScene
#@onready var principal = preload("res://scenes/Menu/Main_Menu.tscn") as PackedScene

func _ready():
	pass


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scenes/Level 1/main_level1.tscn")


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scenes/Level 2/main_level2.tscn")
