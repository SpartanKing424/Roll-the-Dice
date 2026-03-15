extends Node2D



var bull_affection = 0
var snake_affection = 0
var turtle_affection = 0
var ms_affection = 0
var dealer_affection = 0

var current_interaction = "NULL"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func increaseAffection() -> void:
	if current_interaction == "NULL":
		return
	if current_interaction == "bull":
		bull_affection+=1
		return
	if current_interaction == "snake":
		snake_affection+=1
		return
	if current_interaction == "turtle":
		turtle_affection+=1
		return
	if current_interaction == "ms":
		ms_affection+=1
		return
	if current_interaction == "dealer":
		dealer_affection+=1
		return
		
func decreaseAffection() -> void:
	if current_interaction == "NULL":
		return
	if current_interaction == "bull":
		bull_affection-=1
		return
	if current_interaction == "snake":
		snake_affection-=1
		return
	if current_interaction == "turtle":
		turtle_affection-=1
		return
	if current_interaction == "ms":
		ms_affection-=1
		return
	if current_interaction == "dealer":
		dealer_affection-=1
		return
		
func onIncreaseButton() -> void:
	increaseAffection()

func onDecreaseButton() -> void:
	decreaseAffection()
	
func characterSelect(character) -> void:
	current_interaction = character
