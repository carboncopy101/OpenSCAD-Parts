module angle_bracket(){
    render()difference(){
        
        cube([20,20,17]);
        translate([3,1.5,3])color("green")cube([17,17,14]);
        translate([2,0,17])color("yellow")rotate(a=40,v=[0,1,0])cube([25,25,20]);
        
        
          translate([11,10,0])scale([1.6,1.2])cylinder(h=10,r=3,$fn=12);
    
    translate([0,10,10])rotate(a=90, v=[0,1,0])scale([1.6,1.2])cylinder(h=10,r=3,$fn=12);
    }
    
  
    
}

angle_bracket();