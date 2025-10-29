extends Control

@onready var rich_text_label: RichTextLabel =%RichTextLabel
@onready var next_button: Button = %NextButton
var dialogue_items: Array[String]= [
	"Roses are red",
	"Violets are blue",
	"Im learning about arrays",
	"And so are you",
]
var current_item_index := 0

func _ready() -> void:
	_show_text()
	next_button.pressed.connect(advance)


func _show_text() -> void:
	
	var current_item:= dialogue_items[current_item_index]
	rich_text_label.text = current_item
	
func advance() -> void:
	current_item_index += 1
	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
	_show_text()
