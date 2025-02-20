extends Node2D

@onready var fade_anim: AnimationPlayer = $fade_anim
@onready var all_panels: Node2D = $fade_anim/all_panels

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fade_anim.play_backwards("fadeOut")
	await fade_anim.animation_finished
	all_panels.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
