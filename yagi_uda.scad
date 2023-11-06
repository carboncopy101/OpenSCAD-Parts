module element_holder(){
    translate([-6,0,0])render()difference(){
        cube([12,12,7]);
        translate([6,6,0])cylinder(h=7, r = 5);
        
    }
    render()difference(){
    translate([-20,12,0])cube([40,8,7]);
        
    translate([-20,16,3.5])rotate(a=90, v=[0,1,0])cylinder(h=40, r =1.5);
    
        translate([-15,16,0])cube([30,8,7]);
    
    }
}

element_holder();