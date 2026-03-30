extends Node2D
@onready var background_image = get_node("Background")
@onready var bar = preload("res://bar.full.PNG")
@onready var table = preload("res://table.view.full.PNG")

@onready var BigSheldon = get_node("BigSheldon")
@onready var Evelyn = get_node("Evelyn")
@onready var Valencio = get_node("Valencio")

@onready var speaker_text = get_node("Speaker")
@onready var dialogue_text = get_node("Dialogue")
@onready var dialogue_count = 0

@onready var clueless = get_node("Option 1")
@onready var in_the_know = get_node("Option 2")
@onready var tutorial_choice
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogue_text.text = "You've been at the casino for..."
	clueless.text = "No clue."
	in_the_know.text = "Seems simple enough"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Continue"):
		if clueless.disabled == true:
			dialogue_count += 1
		if dialogue_count == 1:
			dialogue_text.text = "Wait..."
		if dialogue_count == 2:
			dialogue_text.text = "How long have you been at the casino for?"
		if dialogue_count == 3:
			dialogue_text.text = "Eh, doesn't matter."
		if dialogue_count == 4:
			dialogue_text.text = "You're on the prowl for your next big win when you spot an unfamilar table full of strangers. From a distance they appear to be playing some sort of dice game."
		if dialogue_count == 5:
			dialogue_text.text = "Considering that you've been nursing a constant headache from the bright neon slot machines, you decide that some traditional gambling sounds refreshing."
		if dialogue_count == 6:
			dialogue_text.text = "Not as refreshing as a martini or gin and tonic of course. Speaking of..."
		if dialogue_count == 7:
			dialogue_text.text = "You finish off the martini in your hand for good luck, and inconspicously slide up to the dice table. The group seems to be wrapping up their current round."
		if dialogue_count == 8:
			dialogue_text.text = "Hah! Triple sixes!! 6 + 6 + 6 = 20, I win!!!"
			Valencio.visible = true
			background_image.texture = table
			speaker_text.text = "Bull Man"
		if dialogue_count == 9:
			dialogue_text.text = "Glancing over at the bull's side fo the table, you see three six sided dice each with the 6 face upwards."
			speaker_text.text = "Narrator"
		if dialogue_count == 10:
			dialogue_text.text = "If you didn't obviously lack the intelligence to cheat, I would have shot you for doing so."
			Evelyn.visible = true
			speaker_text.text = "Hawk Woman"
		if dialogue_count == 11:
			dialogue_text.text = "Jeez, what are they, the mafia?"
			speaker_text.text = "Narrator"
		if dialogue_count == 12:
			dialogue_text.text = "Valencio, Evelyn, relax..."
			BigSheldon.visible = true
			speaker_text.text = "Mafia Turtle"
		if dialogue_count == 13:
			dialogue_text.text = "Oh boy..."
			speaker_text.text = "Narrator"
		if dialogue_count == 14:
			dialogue_text.text = "Oh? Cheating? That's rich coming from Ms. Card Counter. Ms. I-am-the-reason-we-can-no-longer-play-at-the-other-tables-cuz-I-got-caught-cheating."
			speaker_text.text = "Valencio?"
		if dialogue_count == 15:
			dialogue_text.text = "This is the best den in the city and you almost ruined it for us!"
		if dialogue_count == 16:
			dialogue_text.text = "I ruined it for us? Well, I wouldn't have got caught if your IDIOTIC FLEXING HADN'T KNOCKED THE CARDS OUT OF MY HANDS!!!"
			speaker_text.text = "Evelyn?"
		if dialogue_count == 17:
			dialogue_text.text = "ENOUGH!!!"
			speaker_text.text = "Mafia Turtle"
		if dialogue_count == 18:
			dialogue_text.text = "The other two, on the verge of a scuffle, freeze at the sound of his booming voice for a moment before shrinking back."
			speaker_text.text = "Narrator"
		if dialogue_count == 19:
			dialogue_text.text = "Sorry Boss."
			speaker_text.text = "Valencio?"
		if dialogue_count == 20:
			dialogue_text.text = "I stepped out of line, it won't happen again, Sheldon."
			speaker_text.text = "Evelyn?"
		if dialogue_count == 21:
			dialogue_text.text = "The turtle, who you can only assume is the boss, takes a long drag of his cigar before heaving out a puff of disappointment. It reminds you of your father."
			speaker_text.text = "Narrator"
		if dialogue_count == 22:
			dialogue_text.text = "..."
		if dialogue_count == 23:
			dialogue_text.text = "Let's not unpack that."
		if dialogue_count == 24:
			dialogue_text.text = "Nono, it's fine. We're here to have a good time and..."
			speaker_text.text = "Big Sheldon"
		if dialogue_count == 25:
			dialogue_text.text = "Who invited the stray?"
		if dialogue_count == 26:
			dialogue_text.text = "All eyes turn to you, suddenly aware that you've been quietly observing this exchange. The table falls silent."
			speaker_text.text = "Narrator"
		if dialogue_count == 27:
			dialogue_text.text = "..."
			speaker_text.text = "Everyone"
		if dialogue_count == 28:
			dialogue_text.text = "......"
			speaker_text.text = "Everyone"
		if dialogue_count == 29:
			dialogue_text.text = "Finally, the last person across the table breaks the tension."
			speaker_text.text = "Narrator"
		if dialogue_count == 30:
			dialogue_text.text = "Looking to play a good 'ole round of dice? All are welcome at my table."
			speaker_text.text = "Dealer"
		if dialogue_count == 31:
			dialogue_text.text = "You tell the dealer you're in, despite your better judgement. It's been only a few minutes since you last played a game of chance, which is a new record for you!"
			speaker_text.text = "Narrator"
		if dialogue_count == 32:
			dialogue_text.text = "Yet, the itch to break that streak is coming in strong, and who are you to deny your body what it needs?"
		if dialogue_count == 33:
			dialogue_text.text = "So we're just going to let anyone join our table now, Boss?"
			speaker_text.text = "Valencio"
		if dialogue_count == 34:
			dialogue_text.text = "The dealer furrows his brows at the suggestion that this is the mafia's table, but he doesn't protest."
			speaker_text.text = "Narrator"
		if dialogue_count == 35:
			dialogue_text.text = "Sure, why not? It'll spice things up, and maybe we can rob this fool blind of all the cash he has."
			speaker_text.text = "Big Sheldon"
		if dialogue_count == 36:
			dialogue_text.text = "If he has any, he looks homeless."
			speaker_text.text = "Evelyn"
		if dialogue_count == 37:
			dialogue_text.text = "Rude"
			speaker_text.text = "Narrator"
		if dialogue_count == 38:
			dialogue_text.text = "Besides..."
			speaker_text.text = "Evelyn"
		if dialogue_count == 39:
			dialogue_text.text = "She turns to address you."
			speaker_text.text = "Narrator"
		if dialogue_count == 40:
			dialogue_text.text = "Do you even know how to play this game?"
			speaker_text.text = "Evelyn"
		if dialogue_count == 41:
			clueless.disabled = false
			clueless.visible = true
			in_the_know.disabled = false
			in_the_know.visible = true
	
			
		if dialogue_count == 42:
			dialogue_text.text = "That's alright, it's easy enough to explain."
			speaker_text.text = "Dealer"
		if dialogue_count == 43:
			dialogue_text.text = "Basically, you roll 3d6..."
			speaker_text.text = "Dealer"
		if dialogue_count == 44:
			dialogue_text.text = "Three six-sided die."
			speaker_text.text = "Evelyn"
		if dialogue_count == 45:
			dialogue_text.text = "Yes, you roll three six-sided dice in secert. You want the highest sum possible."
			speaker_text.text = "Dealer"
		if dialogue_count == 46:
			dialogue_text.text = "Once you roll, you have the choice to all-in or fold, just like in poker."
			speaker_text.text = "Dealer"
		if dialogue_count == 47:
			dialogue_text.text = "If you all-in and have the highest sum out of those who went all-in, you win and gain +1 Money, plus a little extra based on how deceivingly INCOMPETENT you are."
			speaker_text.text = "Dealer"	
		if dialogue_count == 48:
			dialogue_text.text = "Otherwise, you lose -1 money."
			speaker_text.text = "Dealer"
		if dialogue_count == 49:
			dialogue_text.text = "If you fold, you lose nothing, but also don't gain anything."
			speaker_text.text = "Dealer"
		if dialogue_count == 50:
			dialogue_text.text = "Hmmm, only cowards fold."
			speaker_text.text = "Valencio"
		if dialogue_count == 51:
			dialogue_text.text = "You also have a chance to intimidate others into folding based on how BOLD yar are, as well as how quickly you went all-in."
			speaker_text.text = "Dealer"
		if dialogue_count == 52:
			dialogue_text.text = "In addition, you can do a 'vibe check' of the table to read your opponents using your INSIGHT."
			speaker_text.text = "Dealer"
		if dialogue_count == 53:
			dialogue_text.text = "Doing so will allow you to gleam how your opponents REALLY feel about their hands. However, some opponents may be harder to read than others."
			speaker_text.text = "Dealer"
		if dialogue_count == 54:
			dialogue_text.text = "The boss leans towards you and whispers..."
			speaker_text.text = "Narrator"
		if dialogue_count == 55:
			dialogue_text.text = "You always have the option to cheat too, if you're feeling desperate, confident in your SLEIGHT abilites, or particularly bulletproof."
			speaker_text.text = "Big Sheldon"
		if dialogue_count == 56:
			dialogue_text.text = "I have ears, I can hear you two conspiring over there."
			speaker_text.text = "Evelyn"
		if dialogue_count == 57:
			dialogue_text.text = "Alright, that should be everything! Any questions? Nope? Great, let's get started then!"
			speaker_text.text = "Dealer"
		if dialogue_count == 58:
			get_tree().change_scene_to_file("res://gamble_mechanics.tscn")	
		
		
		if dialogue_count == 141:
			dialogue_text.text = "C'mon, you and Val have been at each other's throats the entire time we've been here. A fourth player can shake things up."
			speaker_text.text = "Big Sheldon"
		if dialogue_count == 142:
			dialogue_text.text = "And if he's actually competent, the family is always looking to welcome a new member."
		if dialogue_count == 143:
			dialogue_text.text = "Yeah, Ev, are you really gonna argue with the Big Shell?."
			speaker_text.text = "Valencio"
		if dialogue_count == 144:
			dialogue_text.text = "Evelyn gives the bull a death glare."
			speaker_text.text = "Narrator"
		if dialogue_count == 145:
			dialogue_text.text = "Fine, you are the boss, Sheldon."
			speaker_text.text = "Evelyn"
		if dialogue_count == 146:
			dialogue_text.text = "She abruptly turns to you once more."
			speaker_text.text = "Narrator"
		if dialogue_count == 147:
			dialogue_text.text = "But don't think you're off the hook because you're a stupid hobo. If I catch you cheating, I will shoot you."
			speaker_text.text = "Evelyn"
		if dialogue_count == 148:
			dialogue_text.text = "You explain to Evelyn that you are not a hobo, but simple going through a 'transitional period'."
			speaker_text.text = "Narrator"
		if dialogue_count == 149:
			dialogue_text.text = "Sure...if you insist."
			speaker_text.text = "Evelyn"
		if dialogue_count == 150:
			Evelyn.visible = false
			dialogue_text.text = "Don't mind her, she's like that with everybody. Don't expect her to warm up to ya, either."
			speaker_text.text = "Valencio"
		if dialogue_count == 151:
			dialogue_text.text = "You doubt the people at this table will be in any way hostipitable. But such hostility is no match for your boozy-smoozy smooth talking."
			speaker_text.text = "Narrator"
		if dialogue_count == 152:
			Valencio.visible = false
			dialogue_text.text = "The Boss takes another drag from his cigar."
		if dialogue_count == 153:
			dialogue_text.text = "Word of advice, kid..."
			speaker_text.text = "Big Sheldon"
		if dialogue_count == 154:
			dialogue_text.text = "Never become a mafia boss, you'll just end up a babysitter."
		if dialogue_count == 155:
			dialogue_text.text = "The dealer laughs nervously."
			speaker_text.text = "Narrator"
		if dialogue_count == 156:
			dialogue_text.text = "Well, that's enough chatter. Let's keep these dice hot!"
			speaker_text.text = "Dealer"
		if dialogue_count == 157:
			get_tree().change_scene_to_file("res://gamble_mechanics.tscn")
			
		
func _on_option_1_pressed() -> void:
	tutorial_choice = 1
	dialogue_count = 42
	print(str(dialogue_count))
	clueless.disabled = true
	clueless.visible = false
	in_the_know.disabled = true
	in_the_know.visible = false
	


func _on_option_2_pressed() -> void:
	tutorial_choice = 2
	dialogue_count = 140
	dialogue_text.text = "I'm not convinced."
	speaker_text.text = "Evelyn"
	print(str(dialogue_count))
	clueless.disabled = true
	clueless.visible = false
	in_the_know.disabled = true
	in_the_know.visible = false
	
