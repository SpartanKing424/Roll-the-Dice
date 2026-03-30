extends Node2D
 
var dice_roll 
#bull's variables
var bull_roll 
var snake_roll
var turtle_roll
@onready var bull_vibe = get_node("Bull/Bull_vibe") 
@onready var what_bull_rolled = get_node("Bull/Bull_roll")
@onready var bull_status = get_node("Bull/Bull_status")

@onready var snake_vibe = get_node("Snake/Snake_vibe")
@onready var what_snake_rolled = get_node("Snake/Snake_roll")
@onready var snake_status =get_node("Snake/Snake_status")

@onready var turtle_vibe = get_node("Turtle/Turtle_vibe")
@onready var what_turtle_rolled = get_node("Turtle/Turtle_roll")
@onready var turtle_status = get_node("Turtle/Turtle_status")


#player stat variables
var player_incomp = Globals.player_incompetence
@export var player_sleight = Globals.player_sleight
@export var player_boldness = Globals.player_sleight
@export var player_insight = Globals.player_insight

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
	if bull_roll < 9:
		bull_vibe.text = "Vibe: Cocky"
	elif bull_roll >= 10 and bull_roll <= 13:
		bull_vibe.text = "Vibe: Very Cocky"
	else:
		bull_vibe.text = "Vibe: Extremely Cocky"
	what_bull_rolled.text = "Roll: ???"
	bull_status.text = "Status:Deciding"
	print(str(bull_roll))
	#snake's AI
	snake_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	if snake_roll <= 10:
		snake_vibe.text = "Vibe: Calculating"
	else: 
		snake_vibe.text = "Vibe: Scheming"
	what_snake_rolled.text = "Roll: ???"
	snake_status.text = "Status: Deciding"
	print(str(snake_roll))
	#turtle's AI
	turtle_roll = randi_range(1,6) + randi_range(1,6) + randi_range(1,6)
	turtle_vibe.text = "Indifferent"
	what_turtle_rolled.text = "Roll: ???"
	turtle_status.text = "Status: Deciding"
	print(str(turtle_roll))
	
	
	pass # Replace with function body.


func _on_all_in_button_pressed() -> void:
	pass # Replace with function body.


func _on_cheat_button_pressed() -> void:
	pass # Replace with function body.


func _on_vibe_check_button_pressed() -> void:
	pass # Replace with function body.
