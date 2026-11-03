extends Control

func _ready():
    var background = ColorRect.new()
    background.color = Color("#202030")
    background.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
    add_child(background)

    var title = Label.new()
    title.text = "CLOSE THIS GAME"
    title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    title.add_theme_font_size_override("font_size", 48)

    title.anchor_left = 0.0
    title.anchor_right = 1.0
    title.anchor_top = 0.3
    title.anchor_bottom = 0.5

    add_child(title)

    var button = Button.new()
    button.text = "CONTINUE"
    button.position = Vector2(540, 400)
    button.size = Vector2(200, 60)

    add_child(button)

    button.pressed.connect(_on_continue_pressed)


func _on_continue_pressed():
    get_tree().change_scene_to_file("res://second_screen.tscn")