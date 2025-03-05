include <./includes.scad>

$keytop_thickness = 0.8;
$wall_thickness = 1;
$corner_radius = 1.5;
$key_shape_type = "rounded_square";
$bottom_radius_heght = 1;

$bottom_key_width = 14.8;
$bottom_key_height = 10.7;
$width_difference = 0.2;
$height_difference = 0.5;

$dish_type = "disable";
$dish_depth = 0;
$dish_skew_x = 0;
$dish_skew_y = 0;

$top_skew = 0;
$top_tilt_y = 0;
$top_tilt = 0;

$total_depth = 2;
$stem_type = "scissors_clip";
$stem_support_height = 8;
// distance between center of clips
$clip_horizontal_distance = 5.5;
$clip_pocket_inner_distance = 10.5;
$clip_pocket_width = 1.55;
// distance between clips and pockets center
$clip_to_pocket = 6.4;
$clip_height = 2;
//$clip_pocket_depth = 1.4;

$text="⟵";
$rounded_key=true;
$minkowski_radius=0.5;
$rounded_square_sharp_right = true;

$label_valign = "left";
mirror([1,0]) 
scissors_clip_offset([0.5, -0.4, 0]) legend($text, position=[-1.3, -.2], size=4) key();