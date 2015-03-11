// foot.scad
// This is the foot for the frame, should be 4 of them. 

// I am using 5/16" x 3/4" hex head, zinc plated bolts
// Head dimensions range from 12.45 mm to 12.51 mm
//	height varies from 4.97 mm to 5.03 mm
//  threaded portion ranges from 7.64 mm to 7.68 mm

// Variables

head_width = 12.5;
head_height = 5;
threaded = 7.8;

difference()
{ 
  cylinder (h=10, d=25, center=false);
   translate([0,0,-3]) cylinder (h=14,d=threaded);
    translate([0,0,-2]) cylinder (h=head_height+2, d=head_width, $fn=6, center=false);
  }
