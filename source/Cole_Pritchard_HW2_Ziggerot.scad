$fn=64;

difference(){
	union(){//unify main form

		difference(){//cutting away bottom of spiral
			translate([30,30,0])
	
			for(i = [0:.1:20]){//for loop for spiral
				rotate(85*i, [0,0,1])
				translate([1*i,0,-3*i])
				cube([2,4,60]);
			}//end for loop for spiral

			translate([0,0,-60])
			cube(size = 62);

		}//end cutting away spiral
		translate([30,30,2.5])
		cylinder(h=5, r1=30, r2=25, center = true, $fn=7);

	}//end unify
	
	translate([30,30,0])
	for(i = [0:6]){//cutout loop
		rotate(i*(360/7), [0,0,1])
		translate([6,25,0])
		cylinder(h=20,r=4,center = true);
	}//end cutout loop

}

translate([30,30,0])
for(i = [0:6]){//platform loop
	rotate(i*(360/7), [0,0,1])
	translate([6,25,1.5])
	cylinder(h=3,r=4,center = true);

	rotate(i*(360/7), [0,0,1])
	translate([6,25,7.5])
	cylinder(h=15,r1=2,r=1,center = true, $fn = 4);
}//end platform loop
