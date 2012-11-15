// y carriage LM8UU holder slim
// *********************************************
// Jonas Kühling
// http://www.jonaskuehling.de
// http://www.thingiverse.com/jonaskuehling
// *********************************************
// derived from:
// http://www.thingiverse.com/thing:18657


// include LM8UU holder slim
// used module-dimensions via its variables: body_width, body_length
include <lm8uu-holder-slim_v1-1.scad>;
holder_length = body_length;
holder_width = body_width;


// y axis dimensions
rod_dist = 118;

// used from lm8uu-holder
/* screw/nut dimensions (M3) - hexagon socket head cap screw ISO 4762, hexagon nut ISO 4032
screw_thread_dia_iso = 3;
screw_head_dia_iso = 5.5;
nut_wrench_size_iso = 5.5;



// screw/nut dimensions for use (plus clearance for fitting purpose)
clearance_dia = 0.5;
screw_thread_dia = screw_thread_dia_iso + clearance_dia;
screw_head_dia = screw_head_dia_iso + clearance_dia;
nut_wrench_size = nut_wrench_size_iso + clearance_dia;
nut_dia_perimeter = (nut_wrench_size/cos(30));
nut_dia = nut_dia_perimeter;
nut_surround_thickness = 2;
*/

// main frame dimensions
frame_length = 120;
frame_height = 1.5;


// RENDER
y_carriage();


// main body
module y_carriage(){

	for(i=[-1,1]) translate([-(rod_dist/2),i*(frame_length/2-holder_length/2),0]) lm8uu_holder(1);
	for(i=[-1,1]) translate([(rod_dist/2),i*(frame_length/2-holder_length/2),0]) rotate([0,0,180]) lm8uu_holder(1);

	difference(){
		translate([0,0,frame_height/2]) cube([rod_dist+8,frame_length-holder_length+8,frame_height],center=true);
		translate([0,0,frame_height/2]) cube([rod_dist-8,frame_length-holder_length-8,frame_height+2],center=true);

		for(i=[-1,1]) translate([i*(rod_dist/2),(frame_length/2-holder_length/2),0])
			for(i=[-1,1])
				translate([i*(body_width/2+nut_surround_thickness+screw_head_dia/2),0,-1])
					cylinder(r=screw_thread_dia/2, h=5, $fn=20);

		for(i=[-1,1]) translate([i*(rod_dist/2),-(frame_length/2-holder_length/2),0])
			for(i=[-1,1])
				translate([i*(body_width/2+nut_surround_thickness+screw_head_dia/2),0,-1])
					cylinder(r=screw_thread_dia/2, h=5, $fn=20);
		
	}

}