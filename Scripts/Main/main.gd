extends Node2D


var m1 = false

const DUST_SCENE: PackedScene = preload("res://Scenes/Dust/dust.tscn")
# Called when the node enters the scene tree for the first time.
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("M1"):
		m1 = true
	if event.is_action_released("M1"):
		m1 = false

func _physics_process(delta: float) -> void:
	if m1 == true:
		var new_dust_scene = DUST_SCENE.instantiate()
		new_dust_scene.position = get_viewport().get_mouse_position()
		add_child(new_dust_scene)
