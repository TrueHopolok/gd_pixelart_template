extends Control


const DURATION = 0.5


func fade_in() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($ColorRect, 'color', Color(0, 0, 0, 1), DURATION)
	await tween.finsihed


func fade_out() -> void:
	var tween: Tween = create_tween()
	tween.tween_property($ColorRect, 'color', Color(0, 0, 0, 0), DURATION)
	await tween.finsihed


func change_scene_packed(scene: PackedScene) -> void:
	await fade_in()
	get_tree().change_scene_to_packed(scene)
	get_tree().paused = false
	await fade_out()


func change_scene_path(path: String) -> void:
	await fade_in()
	get_tree().change_scene_to_file(path)
	get_tree().paused = false
	await fade_out()


func reload_scene() -> void:
	await fade_in()
	get_tree().reload_current_scene()
	get_tree().paused = false
	await fade_out()
