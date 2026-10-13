extends SceneTree
## Renderiza a cena principal para uma prévia de diagnóstico no CI.
## A imagem é um artefato temporário, não um recurso canônico do jogo.

func _initialize() -> void:
	call_deferred("_render_preview")

func _render_preview() -> void:
	var packed_scene := load("res://scenes/main.tscn") as PackedScene
	if packed_scene == null:
		push_error("Não foi possível carregar scenes/main.tscn")
		quit(1)
		return

	var scene := packed_scene.instantiate()
	root.add_child(scene)
	await process_frame
	await process_frame
	await process_frame

	var image := root.get_texture().get_image()
	if image.is_empty():
		push_error("A captura da viewport ficou vazia.")
		quit(1)
		return

	var output_path := ProjectSettings.globalize_path("res://isildur-preview.png")
	var error := image.save_png(output_path)
	if error != OK:
		push_error("Falha ao salvar prévia PNG: %s" % error)
		quit(1)
		return

	print("Prévia renderizada: ", output_path, " (", image.get_width(), "x", image.get_height(), ")")
	quit(0)
