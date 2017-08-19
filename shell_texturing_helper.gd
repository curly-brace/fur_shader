extends MeshInstance

export(int) var shells = 8;

func _ready():
    var mat = get_surface_material(0)
    mat.set_shader_param("cur_layer", 1.0)
    var shader = mat.get_shader()
    var max_len = mat.get_shader_param("max_len")
    var grav = mat.get_shader_param("gravity")
    var f_tex = mat.get_shader_param("fur_tex")
    var p_tex = mat.get_shader_param("fur_params_tex")

    var prev_mat = mat
    var cur_mat = mat
    for i in range(1, shells):
        cur_mat = mat.duplicate(true)
        cur_mat.set_shader_param("cur_layer", 1.0-(i/float(shells-1.0)))

        prev_mat.next_pass = cur_mat
        prev_mat = cur_mat


func _process(delta):
    rotate_z(0.1*delta);
    rotate_y(0.2*delta);
    rotate_x(0.3*delta);