extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var mine_label: Label = $MarginContainer/PanelContainer/MarginContainer/HBoxContainer/MineSpace/MarginContainer/VBoxContainer/Label

var Iron = 0

func _on_button_pressed() -> void:
	animation_player.play("mine")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	Iron = Iron + 1
	mine_label.text = "Iron: " + str(Iron)
