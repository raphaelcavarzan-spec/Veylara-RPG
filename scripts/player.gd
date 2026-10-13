extends CharacterBody2D
## Movimento do protagonista com poses recortadas da ficha original aprovada.
## Isildur é um espadachim; não adicionar arco ou poses de arqueiro.

@export var move_speed: float = 180.0

@onready var sprite_front: Sprite2D = $SpriteFront
@onready var sprite_back: Sprite2D = $SpriteBack
@onready var sprite_left: Sprite2D = $SpriteLeft
@onready var sprite_right: Sprite2D = $SpriteRight

var facing: StringName = &"front"

func _ready() -> void:
	_update_facing_visibility()

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * move_speed
	if direction.x < 0.0:
		facing = &"left"
	elif direction.x > 0.0:
		facing = &"right"
	elif direction.y < 0.0:
		facing = &"back"
	elif direction.y > 0.0:
		facing = &"front"
	_update_facing_visibility()
	move_and_slide()

func _update_facing_visibility() -> void:
	sprite_front.visible = facing == &"front"
	sprite_back.visible = facing == &"back"
	sprite_left.visible = facing == &"left"
	sprite_right.visible = facing == &"right"
