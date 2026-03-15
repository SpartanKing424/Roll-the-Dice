extends Node2D
@onready var exposition = get_node("Exposition")
var text_count = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if text_count == 1:
		exposition.text = "Boo hoo"
	if text_count == 2:
		exposition.text = "Anyways, time to gamble!"
	if text_count == 3:
		exposition.text = "And maybe snag some honies while you're at it ;)"
	if text_count == 4:
		get_tree().change_scene_to_file("res://character_creator.tscn")
	if Input.is_action_just_pressed("Continue"):
		text_count += 1
	
	
