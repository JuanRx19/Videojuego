class_name MainMenu
extends Control

@onready var audio_stream_player = $AudioStreamPlayer

func _ready():
	audio_stream_player.play()

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu/SelectLevel.tscn")


func _on_leave_pressed():
	get_tree().quit()
