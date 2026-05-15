extends ItemList


# Called when the node enters the scene tree for the first time.
func _ready():
	$".".show()


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	print("AHHHH")
	$".".hide()


func _on_item_selected(index: int) -> void:
	if  item_selected.get_name() == "Book":
		print("IS A BOOK")
	if  item_selected.get_name() == "Energy Drink":
		print("IS REDBULLL")
	if  item_selected.get_name() == "Notecard":
		print("IS MAH NOTES")
	if  item_selected.get_name() == "Pencil":
		print("stabby stabby")		
