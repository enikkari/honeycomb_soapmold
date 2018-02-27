//$fn=30;

radius = 50;
height = 50;
wall_thickness = 5;
bottom_thickness = 10;

hexagon_cup(radius,height,wall_thickness,bottom_thickness);

// modules

module hexagon(radius, height) {
    cylinder(r=radius, h=height, $fn=6);
}

module hexagon_cup(radius, height, wall_thickness, bottom_thickness) {
    difference() {
        hexagon(radius, height);
        translate([0, 0, bottom_thickness]) {
            hexagon( (radius - wall_thickness/sin(60)) , height);
        }
    }
}

