imu_x = 38.1;
imu_y = 22.86;
mount_thickness = 3;
hole_d = 3;
allowance = 3;

module imu_10dof_mount(){
    render()difference(){
//base
        cube([imu_x+allowance, imu_y+allowance, mount_thickness], center);

//holes
        color("green")translate([2.54+allowance/2,2.54+allowance/2,0])cylinder(h = mount_thickness+1, r = hole_d/2, $fn=8);
        
        color("green")translate([2.54+allowance/2,20.32+allowance/2,0])cylinder(h = mount_thickness+1, r = hole_d/2, $fn=8);
        
        color("green")translate([35.56+allowance/2,20.32+allowance/2,0])cylinder(h = mount_thickness+1, r = hole_d/2, $fn=8);
        
        color("green")translate([35.56+allowance/2,2.54+allowance/2,0])cylinder(h = mount_thickness+1, r = hole_d/2, $fn=8 );
        
        
//add notches or border
    translate([allowance/4,allowance/4,1.5])color("green")cube([imu_x+allowance/2, imu_y+allowance/2+5,3  ]);
    }
}



imu_10dof_mount();