extends Control

onready var _menu_button = get_node("%MenuButton")

func _ready() -> void:
	print(_menu_button)
	_menu_button.connect("menu_button_pressed", self, "open_menu")
	

func open_menu() -> void:
	SceneTransition.change_overlay($OptionsMenu, "fade")

func _on_OptionsMenu_options_closed():
	SceneTransition.change_overlay($OptionsMenu, "fade")
