use <../functions.scad>

module rounded_bottom_square_shape_by_radius(section_size, bottom_radius) {
  intersection() {
    square(section_size, center = true);
    translate(v = [0, -section_size.y/2+ bottom_radius])  circle(r = bottom_radius, $fn=120);
  }
}

module rounded_bottom_square_shape(size, delta, progress) {
  section_size = size-delta * progress;
  bottom_radius = $bottom_radius_heght/2 + section_size[1]^2/8/$bottom_radius_heght;
  rounded_bottom_square_shape_by_radius(section_size, bottom_radius);
}

module rounded_bottom_rouned_square_shape(size, delta, progress) {
  offset(r=$corner_radius, $fa=360/$shape_facets) {
    section_size = size-delta * progress - [1,1]*$corner_radius*2;
    bottom_radius = $bottom_radius_heght/2 + section_size.y^2/8/$bottom_radius_heght;
    rounded_bottom_square_shape_by_radius(section_size, bottom_radius);
  }
}