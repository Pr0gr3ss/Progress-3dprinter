// 457.20 mm = 18 inches
// 38.1mm = 1.5 inches
// 1.8796mm= 0.074 inches

// variables
length=457.2;
width=38.1;
thickness=1.8796;


{
// frame bottom
color("red")
{
union () 
{
 //angle bottom left
cube ([length,thickness,width]);
cube ([length,width,thickness]);
}
union ()  
{
  //angle bottom right
  translate ([0,length,0]) cube ([length,thickness,width]);
  translate ([0,length-width,0]) cube ([length,width,thickness]);
  }
}
  
color("blue")
{
union()
{
  //angle bottom rear
  translate([0,thickness,thickness]) //lift the frame to overlap
  cube ([thickness,length-thickness,width]);
  translate([0,thickness,thickness])
  cube ([width,length-thickness,thickness]);
  }
union()
{
  //angle bottom front
  translate([length-width,thickness,thickness])
  cube ([width,length-thickness,thickness]);
  translate([length,thickness,thickness])
  cube ([thickness,length-thickness,width]);
  }
}
}

//frame sides
union() //upright left
{
  translate([length/2,thickness,thickness])
  cube([width,thickness,length]);
  translate([length/2,thickness,thickness])
  cube([thickness,width,length]);

  }
union() //upright right
{
  translate([length/2,length-thickness,thickness])
  cube([width,thickness,length-thickness]);
  translate([length/2,length-thickness-width,thickness])
  cube([thickness,width,length-thickness]);
  
  }
//frame top
color("green")union()
{
  translate([length/2-thickness,0,length-width])
  cube([thickness,length,width]);
  translate([length/2-thickness,0,length])
  cube([width,length,thickness]);
  }
