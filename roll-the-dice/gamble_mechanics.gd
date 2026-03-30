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
var incomp = Globals.player_incompetence
var sleight = Globals.player_sleight
var boldness = Globals.player_sleight
var insight = Globals.player_insight
var player_money = Globals.money


#node set up
@onready var fold = get_node("Fold_button")
@onready var roll = get_node("Roll_button")
@onready var all_in = get_node("All_in_button")
@onready var cheat = get_node("Cheat_button")
@onready var vibe_check = get_node("Vibe_check_button")
@onready var continue_prompt = get_node("Continue_prompt")

var bull_fold = false
var snake_fold = false
var turtle_fold = false
var round_over = false

var insight_roll 
var cheat_roll
var allin_roll
var allin_bonus = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fold.disabled = true
	all_in.disabled = true
	cheat.disabled = true
	vibe_check.disabled = true

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if round_over == true:
		fold.disabled = true
		all_in.disabled = true
		cheat.disabled = true
		vibe_check.disabled = true
		roll.disabled = true
		continue_prompt.visible = true
		if Input.is_action_just_pressed("Continue"):
			get_tree().change_scene_to_file("res://ending.tscn")
	
	pass


func _on_fold_button_pressed() -> void:
	if snake_roll < 12:
		snake_roll = 0
		snake_status.text = "Status: Folded"
	else: 
		snake_status.text = "Status: All-In"
	if turtle_roll < 9:
		turtle_status.text = "Status: Folded"
	else: 
		turtle_status.text = "Status: All-In"
	bull_status.text = "Status: All-In"
	if bull_roll > snake_roll and bull_roll > turtle_roll:
		if bull_fold == false:
			roll.text = "Valencio wins"
	elif snake_roll >= bull_roll and snake_roll > turtle_roll:
		if snake_fold == false:
			roll.text = "Evelyn wins"
	elif turtle_roll >= bull_roll and turtle_roll >= snake_roll:
		if turtle_fold == false:
			roll.text = "Big Sheldon wins"
	what_bull_rolled.text = "Roll: " +str(bull_roll)
	what_snake_rolled.text = "Roll: "+str(snake_roll)
	what_turtle_rolled.text = "Roll: "+str(turtle_roll)
	
	round_over = true
			
	

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
	bull_status.text = "Status: Deciding"
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
	turtle_vibe.text = "Vibe: Indifferent"
	what_turtle_rolled.text = "Roll: ???"
	turtle_status.text = "Status: Deciding"
	print(str(turtle_roll))
	
	
	pass # Replace with function body.


func _on_all_in_button_pressed() -> void:
	allin_roll = randi_range(1,10) + boldness + allin_bonus
	print(str(allin_roll))
	what_bull_rolled.text = "Roll: " +str(bull_roll)
	what_snake_rolled.text = "Roll: "+str(snake_roll)
	what_turtle_rolled.text = "Roll: "+str(turtle_roll)
	if allin_roll >= 6 and snake_roll != 18:
		snake_roll = 0
		snake_status.text = "Status: Folded"
	else:
		snake_status.text = "Status: All-In"
	if allin_roll >= 8:
		bull_roll = 0
		bull_status.text = "Status: Folded"
	else: 
		bull_status.text = "Status: All-In"
	if allin_roll >= 11 and turtle_roll != 18:
		turtle_roll = 0
		turtle_status.text = "Status: Folded"
	else: 
		turtle_status.text = "Status: All-In"
	
	if dice_roll >= bull_roll and dice_roll >= snake_roll and dice_roll >= turtle_roll:
		roll.text = "You Win +1 Money!"
	elif bull_roll > dice_roll and bull_roll > snake_roll and bull_roll > turtle_roll:
		roll.text = "Valencio Wins, you lose -1 Money"
	elif snake_roll > dice_roll and snake_roll >= bull_roll and snake_roll > turtle_roll:
		roll.text = "Evelyn Wins, you lose -1 Money"
	else:
		roll.text = "Boss Wins, you lose -1 Money"
		
	round_over = true
			
			
	pass # Replace with function body.


func _on_vibe_check_button_pressed() -> void:
	insight_roll = randi_range(1,10) + int(insight)
	print(str(insight_roll))
	vibe_check.text = "Vibe Checked"
	vibe_check.disabled = true
	allin_bonus -= 1 
	if insight_roll >= 6:
		if bull_roll <= 6:
			bull_vibe.text = "Vibe: Defeated"
		if bull_roll >= 7 and bull_roll <= 9:
			bull_vibe.text = "Vibe: Anxious"
		if bull_roll >= 10 and bull_roll <= 12:
			bull_vibe.text = "Vibe: Confident"
		else: 
			bull_vibe.text = "Vibe: Arrogant"
	if insight_roll >= 8:
		if snake_roll < 8:
			snake_vibe.text = "Vibe: Raging"
		if snake_roll >=8 and snake_roll <= 12:
			snake_vibe.text = "Vibe: Calm"
		else:
			snake_vibe.text = "Vibe: Excited"
	if insight_roll >= 11:
		if turtle_roll == 3:
			turtle_vibe.text = "Vibe: Amused"
		if turtle_roll >= 4 and turtle_roll <= 10:
			turtle_vibe.text = "Vibe: Disappointed"
		if turtle_roll >= 11 and turtle_roll <= 14:
			turtle_vibe.text = "Vibe: Truly Indifferent"
		else:
			turtle_vibe.text = "Vibe: Confident"
	
			
	


func _on_cheat_button_pressed() -> void:
	cheat_roll = randi_range(1,10) + int(sleight)
	print(str(cheat_roll))
	cheat.disabled = true
	allin_bonus -= 1
	if cheat_roll <= 5:
		get_tree().change_scene_to_file("res://ending.tscn")
	if cheat_roll >= 6 and cheat_roll <= 7:
		dice_roll = 14
	if cheat_roll >= 8 and cheat_roll <= 9:
		dice_roll = 16
	else:
		cheat_roll = 18
