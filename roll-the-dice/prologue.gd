extends Node2D
@onready var exposition = get_node("prologue_dialogue")
var text_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	exposition.text = str("Over the past month, you and your wife have been in the middle of divorce proceedings.")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if text_count == 1:
		exposition.text = "To be frank, you're suprised this didn't happen sooner."
	if text_count == 2:
		exposition.text = "You'd think a woman would leave the first time her man gambled away their joint account..."
	if text_count == 3:
		exposition.text = "Or when he pawned off their wedding rings to play slots when cash was tight..."
	if text_count == 4:
		exposition.text = "But taking money out of the kids' college fund for the casino was apparently the final straw. You were just trying to help grow the accounts!"
	if text_count == 5:
		exposition.text = "It's not like you have a 'problem' as she puts it, it's just a hobby. She wouldn't know a hobby if it burst right outta her tuna casserole."
	if text_count == 6:
		exposition.text = "Regardless, at least you can get back to your hobby now, without her nagging."
	if text_count == 7:
		exposition.text = "Maybe you'll even find someone who appreciates your hobby!"
	if text_count == 8:
		exposition.text = "All you have to do is finalize the divorce paperwork..."
	if text_count == 9:
		get_tree().change_scene_to_file("res://character_creation.tscn")
	if Input.is_action_just_pressed("Continue"):
		text_count += 1
	
	
