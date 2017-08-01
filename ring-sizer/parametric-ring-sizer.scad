// Parametric finger size gauge (measuring ring).
// Copyright (C) 2017 Miroslav Hradílek

// This program is  free software:  you can redistribute it and/or modify it
// under  the terms  of the  GNU General Public License  as published by the
// Free Software Foundation, version 3 of the License.
//
// This program  is  distributed  in the hope  that it will  be useful,  but
// WITHOUT  ANY WARRANTY;  without  even the implied  warranty of MERCHANTA-
// BILITY  or  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
// License for more details.
//
// You should have received a copy of the  GNU General Public License  along
// with this program. If not, see <http://www.gnu.org/licenses/>.

inner_ring_circumference = 54; // 
wall_width = 3; // 
thickness  = 4; // 

inner_ring_diameter = inner_ring_circumference / PI;
echo(inner_ring_diameter);
outer_diameter = inner_ring_diameter + 2 * wall_width;

module base() {   
    hull(){
        circle(d=outer_diameter);
        translate([outer_diameter,0,0]) circle(d=outer_diameter/2);
    }
    
}

module body() {
    union() {
        linear_extrude(height = thickness*0.6) base();
        linear_extrude(height = thickness) circle(d=outer_diameter);
    }
}

module part() {
    difference(){
        body();
        cylinder(h = thickness, d = inner_ring_diameter, center = false);
        translate([outer_diameter,0,0]) cylinder(h = thickness, d = 6, center = false);
        translate([outer_diameter*0.7,0,thickness*0.4]) rotate([0,0,90]) linear_extrude(height = thickness*0.2) text(font=":style=Bold",size=6,halign="center",valign="center",str(inner_ring_circumference));
    }
}

part();
