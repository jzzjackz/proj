extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Download:", $Download)
	print("Background:", $Background)
	cycle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func cycle() -> void:
	while true:
		var r1 = randi_range(60, 120)
		$Day.show()
		$Night.hide()
		print("its day")
		print(r1)
		await get_tree().create_timer(r1).timeout
		
		r1 = randi_range(60, 120)
		$Day.hide()
		$Night.show()
		print("its night")
		print(r1)
		await get_tree().create_timer(r1).timeout
