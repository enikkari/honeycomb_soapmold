// this file just has some examples of the basic methods of openscad


//cube(3);// 3mm

//$fn = 30; // made of 30 different parts
//sphere(3);

//cylinder(r = 5, h = 1);

//cube([5,2,1]); // x, y, z
//cube([5,2,1], center = true); //centered

//////
//unions

//union
//cylinder(h=3, r = 3.5);
//cube([6,6,6], center=true);

// difference
//difference() {
//    cylinder(h=3, r = 3.5);
//    cube([6,6,7], center=true);
//}

// difference
//difference() {
//    cube([6,6,7], center=true);
//    cylinder(h=3, r = 3.5);
//}

// intersection
//intersection() {
//    cube([6,6,7], center=true);
//    cylinder(h=3, r = 3.5);
//}

////////
//transform

// move
//translate([1, 1, 0]) {
//    cube([5,5,1]);
//}

//scale
//scale([1, 1, 5]) {
//    //!cube([5,5,1]); // ! -> show only this model
//    cube([5,5,1]);
//}


// rotate
module plate(length, width, thickness) {//name plate
    difference() {
        cube([length, width, thickness]);
        
        translate([length/2, width/2, 0]) {
            cylinder(r = 0.5 , h = thickness, $fn = 30);
        }
    }
}

plate(10,6,10);

//rotate
rotate(a = 45, v=[0,1,1]) {
    plate(6,6,1);
   };
