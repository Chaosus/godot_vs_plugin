@tool
extends VBoxContainer
class_name VisualShaderEditor

@onready var graph : GraphEdit = $PanelContainer/GraphEdit

var graph_menu : HBoxContainer
var visual_shader : VisualShader

func _show_members_dialog(at_mouse_pos : bool, input_port_type : VisualShaderNode.PortType, output_port_type : VisualShaderNode.PortType):
	print("_show_members_dialog")

func _ready():
	graph_menu = graph.get_menu_hbox()
	
	#region Add Node Button
	
	var add_node_button := Button.new()
	add_node_button.flat = true
	add_node_button.text = "Add Node..."
	graph_menu.add_child(add_node_button)
	graph_menu.move_child(add_node_button, 0)
	add_node_button.connect("pressed", _show_members_dialog.bind(false, VisualShaderNode.PortType.MAX, VisualShaderNode.PortType.MAX))
	
	#endregion
