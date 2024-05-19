class_name MainMenu
extends Control

@onready var play = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var leave = $MarginContainer/HBoxContainer/VBoxContainer/Leave as Button
@onready var start_level = preload("res://scenes/Menu/SelectLevel.tscn") as PackedScene

func _ready():
	play.button_down.connect(on_start_pressed)
	leave.button_down.connect(on_exit_pressed)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit()
