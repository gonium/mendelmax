// Dial Indicator Level Jig
// for  PRUSA Mendel  
// GNU GPL v3
// Stephen Carpenter
// sjc@carpanet.net

// Parameters

// Magnets
MagW = 5;
MagH  = 5;
MagGap = .25;
MagOff = 2 * MagGap;

// Rods
RodSep = 50;
RodRad  =   4;
RodGap = 1;

// Body
BodyL = 40;
BodyW = 72;
BodyH = 16;
ChanH = 9;

// Mount
MountL = 20;
MountR1=4.05;
MountR2=4.0;
MountL1=6;
MountL2=3;
VoidW=25;

module rodchannel(rad = RodRad, gap = RodGap, len=BodyL, chanH = 2 * (RodRad + RodGap) ) {
	chanR = rad + gap;
	chanW = 2 * chanR;
	chanbox = chanH - chanR;
	difference() {
		translate([0,0,0]) union() {
			translate([0,chanH-chanR,0])
				cylinder(r=chanR, h=BodyL);
			if (chanH > chanR/2) {
				translate([0,chanbox/2,BodyL/2])
					 cube([chanW, chanbox, BodyL], center=true);
			}
		}
		
		if (chanH < (2 * chanR)) {
			translate([-chanW/2,-(2 * chanR - chanH),0])
				cube([chanW, 2 * chanR - chanH,BodyL]);
		}
	}
}

//translate([0,0,10]) rotate([0,90,0]) 
//	levelerjigOld();


module levelerJig(chanH = ChanH, magOff = MagOff) {
	chanOff = BodyH - ChanH;
	magh = MagH + MagGap;
	voidh = BodyH - (MountL1 + MountL2);

	difference() {
		// Body
		translate([-BodyW/2,0,0]) 
			cube([BodyW,BodyH,BodyL]);

		// Top void
		translate([0,BodyH - voidh/2,BodyL/2])
			#cube([VoidW,voidh, BodyL], center=true);

		// Indicator mount
		translate([0,(MountL1/2 + 3 * MountL2/4),BodyL/2])#rotate([-90,0,0]) union (){
				translate([0,0,MountL2/4]) 
					cylinder(r=4.9, h=MountL1 + .01, center=true);
				translate([0,0,-(MountL1/2 + MountL2/4)]) 
					cylinder(r1=MountR2, r2=MountR1, h=MountL2, center=true);
		}


		// Add 2 Rod Channels
		for(i = [RodSep/2, -RodSep/2]) {
			translate([i, chanH + magh/2 + magOff, BodyL/2])
				cube([MagW + MagGap, magh, BodyL], center = true);
			translate([i,-1,0])
				rodchannel(chanH = (chanH + 1));
		}
	}
}

rotate([0,0,-90])levelerJig();
//rodchannel(chanH=10);
