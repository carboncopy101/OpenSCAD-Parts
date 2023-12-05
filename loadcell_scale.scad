 $fn=40;

module loadcell_scale_base(){
   
    render()difference(){
        
    minkowski(){
        
        union(){
            cube([75-4,12-4,5]);
            translate([0,0,5])cube([20,12-4,5]);
             translate([75,0,0])rotate(a=45, v=[0,0,1])cube([75-4,12-4,5]);
            translate([75-4,0,0])rotate(a=-45, v=[0,0,1])cube([75-4,12-4,5]);
        }
       
        cylinder(r=2,h=0.001);
    }
    
        color("red")translate([5,6-2,0])cylinder(r=2.5, h=12);
        color("red")translate([15,6-2,0])cylinder(r=2.5, h=12);
        hull(){
        color("red")translate([5,6-2,0])cylinder(r=4, h=4);
        color("red")translate([15,6-2,0])cylinder(r=4, h=4);
        }
    
    }   
}

module load_scale_bed(){
    render()difference(){
        minkowski(){
            union(){
            translate([0,0,0])cube([20,12-4,5], center=true);
            cylinder(r=40, h=3);
        }
            cylinder(r=2,h=0.001);
        }
        color("red")translate([-5,0,0])cylinder(r=2.5, h=12, center=true);
        color("red")translate([5,0,0])cylinder(r=2.5, h=12, center=true);
        hull(){
        color("red")translate([-5,0,0])cylinder(r=5, h=5, center=true);
        color("red")translate([5,0,0])cylinder(r=5, h=5, center=true);
        }
        }
    }

//loadcell_scale_base();
translate([10+75-20,4,15+12])load_scale_bed();

