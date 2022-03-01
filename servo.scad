servo_x=11;
servo_y=23;
servo_z=23;
servo_mount_x=11;
servo_mount_y=32;
servo_mount_z=3;
mount_rad=1.5;
servo_shaft_x=0.5*servo_x;
servo_shaft_y=0.2*servo_y;
servo_r=3;
servo_h=3;



fn=64;

$fn =20;

module servo(){
    
    
    color("white")translate([servo_shaft_x,servo_shaft_y,servo_z])cylinder(r=servo_r,h=servo_h+2);
    
    color("blue")translate([servo_shaft_x,servo_shaft_y,servo_z])cylinder(r=5,h=2);
    
    color("blue")cube([servo_x,servo_y,servo_z]);
    color("blue")translate([0,-0.5*(servo_mount_y-servo_y),servo_z*0.75])render()difference(){
        
     cube([servo_mount_x,servo_mount_y,servo_mount_z]);
        //translate([0.5*servo_mount_x,0.25*(servo_mount_y-servo_y),0])cylinder(r=mount_rad,h=10);
       // translate([0.75*servo_mount_x,0.25*(servo_mount_y-servo_y),0])cylinder(r=mount_rad,h=10);
        
        //translate([0.5*servo_mount_x,servo_mount_y-0.25*(servo_mount_y-servo_y),0])cylinder(r=mount_rad,h=10);
        
    }
}    


servo();
