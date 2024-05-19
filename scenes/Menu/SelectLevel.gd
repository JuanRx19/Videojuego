class_name SelectLevel
extends Control

@onready var Level1 = $"../../../Level 1/Control/Level1" as Button
@onready var Level2 = $"." as Button
@onready var start_level = preload("res://scenes/Level 1/main_level1.tscn") as PackedScene
@onready var start_level2 = preload("res://scenes/Level 2/main_level2.tscn") as PackedScene

func _ready():
	Level1.button_down.connect(on_start_pressed)
	Level2.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().change_scene_to_packed(start_level2)
