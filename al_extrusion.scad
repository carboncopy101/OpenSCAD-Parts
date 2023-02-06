height = 10;

module al_extrusion(){
    render()difference(){
            
        translate([0,0,height/2])cube([20,20,height], center = true);
        
        color("blue")cylinder(h = height, r = 5/2);
        
        color("blue")rotate(a=0,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=90,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=180,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=270,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
      
    
        
    }
}

al_extrusion();
