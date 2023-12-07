$fn=50;

module element_holder(){
render()difference(){
    
//element holder
    union(){
        translate([-4,0,0])render()    
        difference(){
            minkowski(){
                cube([8,8,15]);
                cylinder(r=1,h=0.01, $fn=10);
            }
            translate([4,5,0])cylinder(h=25, r = 1.5, $fn=10);
            
        }
        render()difference(){
        translate([-20,8,0])minkowski(){
            cube([40,7,15]);
            cylinder(r=1,h=0.01, $fn=10);
        }
        translate([-23,12,15/2])rotate(a=90, v=[0,1,0])cylinder(h=46, r =1.5, $fn=10);
        
            translate([-15,10,0])cube([30,8,25]);
        
        }
    }
    
    //holes
    //slit
    translate([-0.25,-1,-0.5])color("red")cube([0.5,5,20]);
    translate([-0.5,-1+8-1.5,-0.5])rotate(a=90,v=[0,0,1])color("red")cube([0.5,4,20]);
    
    //long element holder holes
    translate([-5.5,2,3])rotate(a=90, v=[0,1,0])
    color("red")cylinder(h=11, r =1.5, $fn=10);
    
    translate([-5.5,2,15-3])rotate(a=90, v=[0,1,0])
    color("red")cylinder(h=11, r =1.5, $fn=10);
    
    //slit
    translate([-22,11.75,0.5])color("red")cube([44,0.5,20]);
    
    translate([-17.5,7,3])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
     translate([-17.5,7,15-3])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    translate([17.5,7,3])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
     translate([17.5,7,15-3])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    //translate([0,4,-25])color("green")cylinder(h=50, r = 1.5, $fn=10);
    
    //translate([-25,12,3.5])rotate(a=90, v=[0,1,0])color("green")cylinder(h=50, r =1.5, $fn=10);
}
}
 // translate([0,5,-25])color("green")cylinder(h=600, r = 1.5, $fn=10);
    
    //translate([-310/2,12,3.5])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

 //   translate([-310/2,12,3.5+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

 //    translate([-310/2,12,3.5+140+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

 //   translate([-340/2,12,3.5+140+140+100])rotate(a=90, v=[0,1,0])color("green")cylinder(h=340, r =1.5, $fn=10);

 //      translate([-350/2,12,3.5+140+140+100+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=350, r =1.5, $fn=10);

    
element_holder();
//translate([0,0,140])element_holder();
//translate([0,0,140+140])element_holder();
//translate([0,0,140+140+100])element_holder();
//translate([0,0,140+140+100+140])element_holder();