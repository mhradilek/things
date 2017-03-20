
difference(){
    union(){
        translate([0,0,30]) cylinder(h=5, d=37, center=false);
        translate([0,0,0]) cylinder(h=30, d=40, center=false);
    }
    translate([0,0,-0.1]) cylinder(h=37, d=34, center=false);
    translate([0,0,-0.1]) cylinder(h=6.1, d=37.2, center=false);

}

