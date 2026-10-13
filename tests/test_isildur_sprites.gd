extends SceneTree

## Regression checks for Isildur sprite setup in the main scene.
## Run with: godot --headless --path . --script res://tests/test_isildur_sprites.gd

var failures: Array[String] = []

func _initialize() -> void:
	call_deferred("_run_checks")

func _run_checks() -> void:
	var packed_scene := load("res://scenes/main.tscn") as PackedScene
	_check(packed_scene != null, "Main scene loads as a PackedScene")
	if packed_scene == null:
		_finish()
		return

	var scene := packed_scene.instantiate()
	root.add_child(scene)
	await process_frame

	var player := scene.get_node_or_null("WorldSort/Player") as CharacterBody2D
	_check(player != null, "Player node exists")
	if player == null:
		_finish()
		return

	var sprite_names: Array[StringName] = [&"SpriteFront", &"SpriteBack", &"SpriteLeft", &"SpriteRight"]
	var texture_size := Vector2.ZERO
	for sprite_name in sprite_names:
		var sprite := player.get_node_or_null(NodePath(String(sprite_name))) as Sprite2D
		_check(sprite != null, "%s node exists" % sprite_name)
		if sprite == null:
			continue
		_check(sprite.texture != null, "%s has a texture" % sprite_name)
		if sprite.texture == null:
			continue
		texture_size = sprite.texture.get_size()
		_check(sprite.region_enabled, "%s uses a texture region" % sprite_name)
		var rect := sprite.region_rect
		_check(rect.position.x >= 0.0 and rect.position.y >= 0.0, "%s region starts inside the texture" % sprite_name)
		_check(rect.size.x > 0.0 and rect.size.y > 0.0, "%s region has positive dimensions" % sprite_name)
		_check(rect.end.x <= texture_size.x and rect.end.y <= texture_size.y, "%s region fits inside %s texture" % [sprite_name, texture_size])

	_check(texture_size == Vector2(768, 536), "Source sprite sheet is 768x536 pixels")
	_check(player.get_node("SpriteFront").visible, "Front pose is visible at startup")
	_check(not player.get_node("SpriteBack").visible and not player.get_node("SpriteLeft").visible and not player.get_node("SpriteRight").visible, "Only one directional pose is visible at startup")

	for direction in [&"front", &"back", &"left", &"right"]:
		player.set("facing", direction)
		player.call("_update_facing_visibility")
		for sprite_name in sprite_names:
			var sprite := player.get_node(NodePath(String(sprite_name))) as Sprite2D
			_check(sprite.visible == (StringName(String(sprite_name).trim_prefix("Sprite").to_lower()) == direction), "Facing %s visibility matches %s" % [direction, sprite_name])

	_finish()

func _check(condition: bool, message: String) -> void:
	if not condition:
		failures.append(message)
		push_error("FAIL: " + message)

func _finish() -> void:
	if failures.is_empty():
		print("PASS: Isildur sprite scene checks passed.")
		quit(0)
	else:
		push_error("%d Isildur sprite check(s) failed." % failures.size())
		quit(1)
