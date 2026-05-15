extends Area2D

var enemyNum = 0

var enemyData: Dictionary = {
	"CollegeBoard": bosses.new("CollegeBoard", 100, 15, load("res://assets/collegeboard.png")),
	"Canva": bosses.new("Canva", 150, 20, load("res://assets/canva.png")),
	"Coral": bosses.new("Coral", 200, 50, load("res://assets/coral.png"))
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
