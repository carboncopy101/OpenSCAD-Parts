 $fn=50;
 
module loadcell_scale_base(){
   
    render()difference(){
        
    minkowski(){
        
        union(){
            
            hull(){
             //translate([0.1,-1,12])rotate(a=180-30,v=[0,1,0])cube([10.5,14-4,0.1]);
                translate([-8.5,-1,0])cube([75-4,14-4,5]);
                translate([0,-1,5])cube([20,14-4,7]);
          
            
            }
            translate([18.75,-1,7.15])rotate(a=15,v=[0,1,0])cube([20,14-4,5]);
           
           
             translate([60,0,0])rotate(a=45, v=[0,0,1])cube([65-4,12-4,5]);
            translate([60-4,0,0])rotate(a=-45, v=[0,0,1])cube([65-4,12-4,5]);
        }
       
        cylinder(r=2,h=0.001);
    }
    
        color("red")translate([5,6-2,0])cylinder(r=1.5, h=16);
        color("red")translate([15,6-2,0])cylinder(r=1.5, h=16);
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
            cylinder(r1=36, r2=40, h=3);
        }
            cylinder(r=2,h=0.001);
        }
        color("red")translate([-5,0,0])cylinder(r=1.5, h=12, center=true);
        color("red")translate([5,0,0])cylinder(r=1.5, h=12, center=true);
        //hull(){
        //color("red")translate([-5,0,0])cylinder(r=5, h=5, center=true);
        //color("red")translate([5,0,0])cylinder(r=5, h=5, center=true);
        //}
        }
    }

loadcell_scale_base();
//translate([10+75-20,4+30,15+12])rotate(a=180,v=[0,1,0])load_scale_bed();

