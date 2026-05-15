class_name idleEnemy

var name: String = "N/A"
var texture: CompressedTexture2D = load("res://assets/collegeboard.png")

func _init(name: String, texture: CompressedTexture2D):
	self.name = name
	self.texture = texture
