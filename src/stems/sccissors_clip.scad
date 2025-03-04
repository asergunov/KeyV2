module sccissors_clip_steam() {
    translate(v = [0, ($bottom_key_height-$clip_height-0.7)/2, $total_depth-$keytop_thickness-$dish_depth]) {
        translate(v = [0, 0, -$clip_depth/2]) {
            translate(v = [$clip_horizontal_distance/2, 0]) sccissors_clip();
            translate(v = [-$clip_horizontal_distance/2, 0]) sccissors_clip();
        }

        translate(v = [0, -$clip_to_pocket, -$clip_pocket_depth/2]) {
           translate(v = [$clip_pocket_inner_distance/2+$clip_pocket_width/2,0,0])  sccissors_clip_pocket();
           translate(v = [-$clip_pocket_inner_distance/2-$clip_pocket_width/2,0,0]) mirror(v = [1,0,0])  sccissors_clip_pocket();
        }
    }
}

module sccissors_clip() {
    eps = 0.1;
    rotate(a = [0,90,0]) 
    linear_extrude(height=$clip_width, center=true) 
    difference() { 
        translate(v = [-eps/2, 0]) square(size = [$clip_depth+eps, $clip_height], center=true);
        translate(v = [($clip_hole_diameter-$clip_depth)/2+0.1, 0]) circle(r = $clip_hole_diameter/2);
        //translate(v = [$clip_depth/2, 0]) circle(r = $clip_hole_diameter/2);
        square(size = [$clip_depth, $clip_hole_click_diameter],  center=true);
    }
}

module sccissors_clip_pocket() {
    size = [$clip_pocket_width, $clip_pocket_height, $clip_pocket_depth];
    difference() {
        cube(size = size, center=true);
        translate([-0.5, -0.5, 0.6]) cube(size = size, center=true);
        translate(-size/2) rotate(a = 45, v = [0,0,1]) cube(size=[1,1,1]*1.5, center=true);
    }
}