module quarterwave_holder_soldered(){
    render()difference(){
        translate([0,0,-10])cylinder(h=20, r1=20, r2=0, center=true);
    
        translate([0,0,0])rotate(a=-135,v=[0,1,0])color("yellow")cylinder(h=30,r=1.5);
   
        mirror([1,0,0])translate([0,0,0])rotate(a=-135,v=[0,1,0])color("yellow")cylinder(h=30,r=1.5);
    
        rotate(a=90,v=[0,0,1])translate([0,0,0])rotate(a=-135,v=[0,1,0])color("yellow")cylinder(h=30,r=1.5);
    
        rotate(a=-90,v=[0,0,1])translate([0,0,0])rotate(a=-135,v=[0,1,0])color("yellow")cylinder(h=30,r=1.5);
        
         translate([0,0,0-3])cylinder(h=30,r=1.5);
        
        translate([0,0,-13])cylinder(h=20, r1=20, r2=0, center=true);    }
    
   
}

quarterwave_holder_soldered();