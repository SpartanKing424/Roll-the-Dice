extends Node2D
 
var dice_roll 
#bull's variables
var bull_roll 
@onready var bull_vibe = get_node("Bull/Bull_vibe") 
@onready var what_bull_rolled = get_node("Bull/Bull_roll")
@onready var bull_status = get_node("Bull/Bull_status")
var snake_roll
var turtle_roll 
var ms_roll

#player stat variables
@export var player_luck = 0
@export var player_sleight = 0
@export var player_boldness = 0
@export var player_insight = 0

#node set up
@onready var fold = get_node("Fold_button")
@onready var roll = get_node("Roll_button")
@onready var all_in = get_node("All_in_button")
@onready var cheat = get_node("Cheat_button")
@onready var vibe_check = get_node("Vibe_check_button")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fold.disabled = true
	all_in.disabled = true
	cheat.disabled = true
	vibe_check.disabled = true
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fold_button_pressed() -> void:
	pass # Replace with function body.


func _on_roll_button_pressed() -> void:
	#player mechanics
	dice_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	print(str(dice_roll))
	roll.text = "You rolled " + str(dice_roll)
	roll.disabled = true
	fold.disabled = false
	all_in.disabled = false
	cheat.disabled = false
	vibe_check.disabled = false
	
	#bull's AI
	bull_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	bull_vibe.text = "Vibe: Cocky"
	what_bull_rolled.text = "Roll: ???"
	bull_status.text = "Status:Deciding"
	print(str(bull_roll))
	#snake's AI
	snake_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	print(str(snake_roll))
	#turtle's AI
	turtle_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	print(str(turtle_roll))
	#ms's AI
	ms_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	print(str(ms_roll))
	pass # Replace with function body.
