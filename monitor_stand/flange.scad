
difference(){
    union(){
        translate([0,0,0]) cylinder(h=10, d1=45, d2=40, center=false);
    }
    translate([0,0,2]) cylinder(h=13, d=37.2, center=false);
    pathRadius=28/2;
    num=3;
    for (i=[1:num])  {
        translate([pathRadius*cos(i*(360/num)),pathRadius*sin(i*(360/num)),-0.1]) cylinder(h=13, d=4, center=false, $fn=24);
    }
}