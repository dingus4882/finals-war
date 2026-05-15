class_name myPlayer

var name: String = "N/A"
var health: int = 0
var texture: CompressedTexture2D = load("res://assets/book.png")

func _init(name: String, health: int, texture: CompressedTexture2D):
	self.name = name
	self.health = health
	self.texture = texture
