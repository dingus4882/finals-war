class_name bosses

var name: String = "N/A"
var health: int = 0
var dmg: int = 0
var texture: ImageTexture = Image.load_from_file("res://assets/book.png")

func _init(name: String, health: int, dmg: int):
	self.name = name
	self.health = health
	self.dmg = dmg
