module rpi_4(){
   color("green")render()difference(){
           translate([3,3,0])minkowski(){
//PCB outline

        cube([85-6,56-6,2]); 
        cylinder(r=3, h=1); 
       }
       
//holes       
       translate([3.5,3.5,0])cylinder(h=3,r=2.7/2);
       translate([3.5,56-3.5,0])cylinder(h=3,r=2.7/2); 
       
       translate([3.5+29+29,3.5,0])cylinder(h=3,r=2.7/2);
       translate([3.5+29+29,56-3.5,0])cylinder(h=3,r=2.7/2);
          
   }
   
//GPIO
   color("silver")translate([7,3.5+49-2.54,3])cube([2.54*20,2.54*2,8.5]);
   
//PORTS
   
    //USB
    color("silver")translate([85-17,1.5,3])cube([17,13,16]);
   
    color("silver")translate([85-17,1.5+13+5,3])cube([17,13,16]);
    //ETHERNET
    color("silver")translate([85-21,56-16-2,3])cube([21,16,13.5]);
}



module ftype(){
    translate([3,3,0])minkowski(){
//PCB outline
        render()difference(){
            cube([115-6,90-6,54]); 
            translate([0.125,.125,1.5])cube([115-6.25,90-6.25,54]); 
            }
        
        cylinder(r=2, h=1); 
       }
       
       translate([6,6,0])cylinder(h=55, r=3);
       translate([109,6,0])cylinder(h=55, r=3);
       
       translate([6,83,0])cylinder(h=55, r=3);
       translate([109,83,0])cylinder(h=55, r=3);
      
    
}

module squarejunction(){
    
    render()difference(){
        union()minkowski(){
    //PCB outline
            
            cube([100-3,100-3,44+2]); 
            cylinder(r=3, h=1); 
        }
        
        translate([1.75,1.75,5])cube([100-5,100-5,44+2]);
    }
    
}

module squarejunction_red(){
    
    render()difference(){
        union()minkowski(){
    //PCB outline
            
            cube([121-3,121-3,57]); 
            cylinder(r=3, h=1); 
        }
        
        translate([1.75,1.75,3])cube([121-5,121-5,57]);
        
       
    }
    translate([3,3,0])cylinder(h=58, r=3);
    translate([117,3,0])cylinder(h=58, r=3);
       
    translate([3,117,0])cylinder(h=58, r=3);
    translate([117,117,0])cylinder(h=58, r=3);
    
}

module arc_cutout(){
    render()difference(){
        
        cube([203.2,127,76.2]); 
        translate([0.6,0.6,1.2])cube([203.2-1.2,127-1.2,76.2-1.2]); 
        
       
    }
}

//translate([6,10,1.5])rpi_4();
//color("red")ftype();

//color("red")squarejunction();
//translate([6,10,5])rpi_4();

//color("red")squarejunction_red();
//translate([6,10,5])rpi_4();

color("red")arc_cutout();
translate([6,10,5])rpi_4();