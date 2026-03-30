extends Node2D
var stat_points = 3
@onready var bold_up = get_node("Bold_up")
@onready var bold_down = get_node("Bold_down")
@onready var boldness = get_node("Boldness")
@onready var player_bold = Globals.player_boldness

@onready var incomp_up = get_node("Incomp_up")
@onready var incomp_down = get_node("Incomp_down")
@onready var incompetence = get_node("Incompetence")
@onready var player_incomp = Globals.player_incompetence

@onready var insight_up = get_node("Insight_up")
@onready var insight_down = get_node("Insight_down")
@onready var insight = get_node("Insight")
@onready var player_insight = Globals.player_insight


@onready var sleight_up = get_node("Sleight_up")
@onready var sleight_down = get_node("Sleight_down")
@onready var sleight = get_node("Sleight")
@onready var player_sleight = Globals.player_sleight

@onready var signature = get_node("Signature")
@onready var player_name = Globals.player_name

@onready var Continue = get_node("Continue")


	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Continue.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if stat_points == 0:
		bold_up.disabled = true
		incomp_up.disabled = true
		insight_up.disabled = true
		sleight_up.disabled = true
	else:
		bold_up.disabled = false
		incomp_up.disabled = false
		insight_up.disabled = false
		sleight_up.disabled = false
		
	boldness.text = str(player_bold)
	incompetence.text = str(player_incomp)
	insight.text = str(player_insight)
	sleight.text = str(player_sleight)
		
	if player_bold == 0:
		bold_down.disabled = true
	else:
		bold_down.disabled = false
		
	if player_incomp == 0:
		incomp_down.disabled = true
	else:
		incomp_down.disabled = false
		
	if player_insight == 0:
		insight_down.disabled = true
	else: 
		insight_down.disabled = false
		
	if player_sleight == 0:
		sleight_down.disabled = true
	else:
		sleight_down.disabled = false
	if stat_points == 0 and signature.text != "":
		Continue.visible = true
		if Input.is_action_just_pressed("Continue"):
			get_tree().change_scene_to_file("res://tutorial.tscn")
		

func _on_bold_up_pressed() -> void:
	player_bold += 1
	stat_points -= 1


func _on_incomp_up_pressed() -> void:
	player_incomp += 1
	stat_points -= 1


func _on_insight_up_pressed() -> void:
	player_insight += 1
	stat_points -= 1


func _on_sleight_up_pressed() -> void:
	player_sleight += 1
	stat_points -= 1


func _on_sleight_down_pressed() -> void:
	player_sleight -= 1
	stat_points +=1


func _on_insight_down_pressed() -> void:
	player_insight -= 1
	stat_points += 1


func _on_bold_down_pressed() -> void:
	player_bold -= 1
	stat_points += 1


func _on_incomp_down_pressed() -> void:
	player_incomp -= 1
	stat_points += 1
