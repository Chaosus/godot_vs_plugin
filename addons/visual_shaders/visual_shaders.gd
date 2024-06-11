@tool
extends EditorPlugin

var editor : VisualShaderEditor

func _enter_tree():
	editor = preload("res://addons/visual_shaders/visual_shader_editor.tscn").instantiate()
	add_control_to_bottom_panel(editor, "Visual Shader Editor")

func _exit_tree():
	remove_control_from_bottom_panel(editor)
	editor.queue_free()
