module element_holder(){
//holes
    //slit
    translate([-0.5,-0.1,-0.5])color("red")cube([1,3,11]);
    
    //long element holder holes
    translate([-4.5,2,2.5])rotate(a=90, v=[0,1,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    translate([-4.5,2,7.5])rotate(a=90, v=[0,1,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    //slit
    translate([-21,11.5,0.5])color("red")cube([42,0.5,10]);
    
    translate([-17.5,7,2.5])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
     translate([-17.5,7,7.5])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    translate([17.5,7,2.5])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
     translate([17.5,7,7.5])rotate(a=90, v=[-1,0,0])
    color("red")cylinder(h=9, r =1.5, $fn=10);
    
    translate([0,4,-25])color("green")cylinder(h=50, r = 1.5, $fn=10);
    
    translate([-25,12,3.5])rotate(a=90, v=[0,1,0])color("green")cylinder(h=50, r =1.5, $fn=10);

//element holder    
    translate([-4,0,0])render()    
    difference(){
        cube([8,8,10]);
        translate([4,4,0])cylinder(h=7, r = 1.5, $fn=10);
        
    }
    render()difference(){
    translate([-20,8,0])cube([40,7,10]);
        
    translate([-20,12,3.5])rotate(a=90, v=[0,1,0])cylinder(h=40, r =1.5, $fn=10);
    
        translate([-15,10,0])cube([30,8,10]);
    
    }
}
  translate([0,4,-25])color("green")cylinder(h=600, r = 1.5, $fn=10);
    
    translate([-310/2,12,3.5])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

    translate([-310/2,12,3.5+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

     translate([-310/2,12,3.5+140+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=310, r =1.5, $fn=10);

    translate([-340/2,12,3.5+140+140+100])rotate(a=90, v=[0,1,0])color("green")cylinder(h=340, r =1.5, $fn=10);

       translate([-350/2,12,3.5+140+140+100+140])rotate(a=90, v=[0,1,0])color("green")cylinder(h=350, r =1.5, $fn=10);

    
element_holder();
//translate([0,0,140])element_holder();
//translate([0,0,140+140])element_holder();
//translate([0,0,140+140+100])element_holder();
//translate([0,0,140+140+100+140])element_holder();