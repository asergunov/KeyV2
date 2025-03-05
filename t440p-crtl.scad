include <./includes.scad>

$keytop_thickness = 0.8;
$wall_thickness = 1;
$corner_radius = 1.5;
$key_shape_type = "rounded_bottom_rouned_square";
$bottom_radius_heght = 1;

$bottom_key_width = 16;
$bottom_key_height = 16.2;
$width_difference = 0.2;
$height_difference = 0.5;

$dish_type = "cylindrical";
$dish_depth = 0.5;
$dish_skew_x = 0;
$dish_skew_y = 0;

$top_skew = 0.2;
$top_tilt_y = 0;
$top_tilt = 0;
$clip_to_pocket=10.8;
$total_depth = 2;
$stem_type = "scissors_clip";
$rounded_key=true;
$minkowski_radius=0.5;
$text="";

$label_valign = "left";
scissors_clip_offset([0, -3+2.4, 0]) legend($text, position=[-1.5, -.2], size=3) key();