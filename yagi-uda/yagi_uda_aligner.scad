$fn=20;

module aligner(){
    render()difference(){
        cube([180,28,4]);
        translate([0,4,0])color("red")rotate(a=90,v=[0,1,0])cylinder(h=310/2-8/2, r=1.5);   
        translate([0,14,0])color("red")rotate(a=90,v=[0,1,0])cylinder(h=340/2-8/2, r=1.5);   
        translate([0,24,0])color("red")rotate(a=90,v=[0,1,0])cylinder(h=350/2-8/2, r=1.5); 
        
        
    }
      
}

aligner();