so239_corner2corner = 25.4;
so239_width = 18.23720;
so239_thickness =2;
so239_rad = (so239_corner2corner - so239_width)/2;

antCyl_rad = 15.748/2;
antCyl_rad2 = 14.1478/2;
antCyl_height = 15.875;

so239_hole_rad = 3.175/2;

so239_wire_base_height2 = 1.3716;
so239_wire_base_rad2 = 2.7686 + 1;

so239_wire_conn_height = 7.9248-so239_wire_base_height2;

so239_wire_tip_height = 7.9248;
so239_wire_tip_rad = 2.7686/2 + 1;
so239_wire_hole = 2.7686/2;

so239_wire_base_height = 26.9748 - antCyl_height-so239_wire_base_height2-so239_wire_conn_height;


total_tip_height =so239_wire_base_height+so239_wire_base_height2+so239_wire_tip_height;

module p_so239_ant(){
    render()difference(){
    union(){
    cube([so239_width,so239_width,so239_thickness]);
   
        
    //curves
    translate([0,0,0])cylinder(h = so239_thickness, r =so239_rad);
    translate([so239_width,0,0])cylinder(h = so239_thickness, r =so239_rad);
    translate([0,so239_width,0])cylinder(h = so239_thickness, r =so239_rad);
    translate([so239_width,so239_width,0])cylinder(h = so239_thickness, r =so239_rad);
    //curves end
    
    translate([so239_width,0,0])cube([so239_rad,so239_width,so239_thickness]);
    translate([-so239_rad,0,0])cube([so239_rad,so239_width,so239_thickness]);
    
    translate([0,-so239_rad,0])cube([so239_width,so239_rad,so239_thickness]);
    
    translate([0,so239_width,0])cube([so239_width,so239_rad,so239_thickness]);
    
    
    translate([so239_width/2,so239_width/2,0])cylinder(h = antCyl_height, r = antCyl_rad);
    
        
    }
    //insert holes here
    translate([so239_width/2,so239_width/2,so239_thickness])cylinder(h = antCyl_height, r = antCyl_rad2);
    
    translate([so239_width/2,so239_width/2,0])cylinder(h = so239_thickness, r = 2.7686);
    
    translate([so239_width,0,0])cylinder(h = antCyl_height, r = so239_hole_rad);
    
    translate([0,so239_width,0])cylinder(h = antCyl_height, r = so239_hole_rad);
    
    translate([so239_width,so239_width,0])cylinder(h = antCyl_height, r = so239_hole_rad);
    
    translate([0,0,0])cylinder(h = antCyl_height, r = so239_hole_rad);
    
    //holes end
    }
}

module p_so239_wire(){
    render()difference(){
    union(){
    translate([so239_width/2,so239_width/2,-so239_wire_base_height])cylinder(h=so239_wire_base_height, r = antCyl_rad);
    
     translate([so239_width/2,so239_width/2,-so239_wire_base_height-so239_wire_base_height2])cylinder(h=so239_wire_base_height2, r = so239_wire_base_rad2);
    
     translate([so239_width/2,so239_width/2,-so239_wire_base_height-so239_wire_base_height2-so239_wire_tip_height])cylinder(h=so239_wire_tip_height, r = so239_wire_tip_rad);
    
    }
    
    translate([so239_width/2,so239_width/2,-so239_wire_base_height-so239_wire_base_height2-so239_wire_tip_height])cylinder(h=so239_wire_tip_height+so239_wire_base_height2+so239_wire_base_height, r = so239_wire_hole);
    }
}

module p_so239(){
    
    translate([-so239_width/2,so239_width/2,0])rotate(a=180, v = [1,0,0])color("gray")union(){
        p_so239_ant();
        p_so239_wire();
    }

}



module so239_mounting_pattern(){
    cylinder(h=10, r=16.6624/2);
    
    translate([18.2372/2,18.2372/2,0])cylinder(h=10, r=3.175/2, $fn = 12);
    
    translate([18.2372/2,-18.2372/2,0])cylinder(h=10, r=3.175/2, $fn = 12);
    
    translate([-18.2372/2,18.2372/2,0])cylinder(h=10, r=3.175/2, $fn = 12);
    
    translate([-18.2372/2,-18.2372/2,0])cylinder(h=10, r=3.175/2, $fn = 12);

}


rotate(a=45, v=[0,0,1])p_so239(); 
