class_name bosses

#var myImg: Image = Image.load_from_file("res://assets/collegeboard.png")
var name: String = "N/A"
var health: int = 0
var dmg: int = 0
var texture: CompressedTexture2D = load("res://assets/collegeboard.png")

func _init(name: String, health: int, dmg: int, texture: CompressedTexture2D):
	self.name = name
	self.health = health
	self.dmg = dmg
	self.texture = texture
