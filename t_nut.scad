module t_nut(){
    render()difference(){
        
        rotate(a=90, v=[1,0,0])translate([0,0,-5])linear_extrude(height=10)polygon(points=[[5,3],[5,0],[9.5,0],[9.5,-3],[7.5, -6],[-7.5,-6],[-9.5,-3],[-9.5,0],[-5,0],[-5,3]]);
        
        translate([0,0,-8])cylinder(h=16, r=4);
    }
}

t_nut();