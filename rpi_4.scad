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


rpi_4();