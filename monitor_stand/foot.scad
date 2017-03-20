
difference(){
    union(){
        translate([0,0,2]) cylinder(h=6, d=37, center=false);
        translate([0,0,0]) cylinder(h=2, d=45, center=false);
    }
    translate([0,0,-0.1]) cylinder(h=37, d=34, center=false);
}

