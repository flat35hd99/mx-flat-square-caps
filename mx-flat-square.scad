$fs = 0.1;

global_thin_film_thickness = 0.01;

key_bottom_vertical = 18;
key_bottom_side = 18;
key_top_vertical = 17;
key_top_side = 17;
key_hight = 8;

stem_outer_diameter = 5.5;
stem_cross_hight = 4.0;
stem_cross_vertical = 1.25;
stem_cross_side = 1.10;

module keycap_stem (stem_cross_hight, stem_outer_diameter,stem_cross_vertical, stem_cross_side) {
  difference () {
    cylinder(d = stem_outer_diameter, h = 15);
    translate([0, 0, 15/2])
      cube(size = [stem_cross_vertical, stem_cross_length, 15], center = true);
    translate([0, 0, 15/2])
    cube(size = [stem_cross_length, stem_cross_side, 15], center = true);
  }
}

module keycap_shape () {
  hull() {
    translate([0,0,key_hight])
      cube([key_top_side,key_top_vertical,global_thin_film_thickness], center = true);
    cube([key_bottom_side,key_bottom_vertical,global_thin_film_thickness], center = true);
  }
}

keycap_shape();
