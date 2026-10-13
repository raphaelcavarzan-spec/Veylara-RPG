extends CharacterBody2D
## Movimento inicial do protagonista. O visual geométrico é temporário e será substituído
## pelos sprites aprovados de Isildur quando os arquivos originais forem integrados.

@export var move_speed: float = 180.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * move_speed
	move_and_slide()
