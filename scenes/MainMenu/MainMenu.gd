extends Node2D

onready var main_theme: AudioStreamPlayer

func _ready() -> void:
	# how to play music via the AudioManager
	var main_theme_res = load("res://assets/music/juhani_junkala_chiptune_adventures_stage_select.mp3")
	main_theme = AudioManager.play(main_theme_res, -15.0)

func _on_StartNewGameButton_pressed():
	AudioManager.fade_out(main_theme)
	SceneTransition.change_scene("res://management/Game.tscn", "horizontal_bars")

func _on_LoadGameButton_pressed():
	SceneTransition.change_scene("res://scenes/SavedGames/SavedGames.tscn")

func _on_OptionsButton_pressed():
	SceneTransition.change_scene("res://scenes/Options/Options.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Licenses_pressed():
	$MainMenuCanvas/Licenses.visible = true
