module al_extrusion(height,x,y,z){
    color("silver")translate([x,y,z])render()difference(){
            
        translate([0,0,height/2])cube([20,20,height], center = true);
        
        color("blue")cylinder(h = height, r = 5/2);
        
        color("blue")rotate(a=0,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=90,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=180,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
         color("blue")rotate(a=270,v=[0,0,1])linear_extrude(height = height)polygon(points = [[3,4],[6,7],[6,9],[3,9],[3,10],[-3,10],[-3,9],[-6,9],[-6,7],[-3,4]]);
        
      
    
        
    }
}


module angle_bracket(){
    color("red")render()difference(){
        
        cube([20,20,17]);
        translate([3,1.5,3])color("green")cube([17,17,14]);
        translate([2,0,17])color("yellow")rotate(a=40,v=[0,1,0])cube([25,25,20]);
        
        
          translate([11,10,0])scale([1.6,1.2])cylinder(h=10,r=3,$fn=12);
    
    translate([0,10,10])rotate(a=90, v=[0,1,0])scale([1.6,1.2])cylinder(h=10,r=3,$fn=12);
    }
    
  
    
}

module cage(){
    al_extrusion(300,160,160,0);
    al_extrusion(300,-160,160,0);al_extrusion(300,-160,-160,0);
    al_extrusion(300,160,-160,0);
    
    rotate(a=90,v=[1,0,0])al_extrusion(300,160,10,-150);
    rotate(a=90,v=[1,0,0])
    al_extrusion(300,-160,10,-150);
    
    rotate(a=90,v=[1,0,0])al_extrusion(300,160,290,-150);
    rotate(a=90,v=[1,0,0])
    al_extrusion(300,-160,290,-150);
    
    rotate(a=90,v=[0,1,0])al_extrusion(300,-10,0,-150);
    rotate(a=90,v=[0,1,0])al_extrusion(300,-10,160,-150);
    rotate(a=90,v=[0,1,0])al_extrusion(300,-10,-160,-150);
    
    rotate(a=90,v=[0,1,0])al_extrusion(300,-290,0,-150);
    rotate(a=90,v=[0,1,0])al_extrusion(300,-290,160,-150);
    rotate(a=90,v=[0,1,0])al_extrusion(300,-290,-160,-150);
     
}

module fourbrackets(){
    translate([-150,150,20])angle_bracket();
rotate(a=180,v=[0,0,1])translate([-150,150,20])angle_bracket();
translate([-150,-170,20])angle_bracket();
rotate(a=180,v=[0,0,1])translate([-150,-170,20])angle_bracket();
}

cage();
rotate(a=0,v=[1,0,0])fourbrackets();
rotate(a=90,v=[0,0,1])rotate(a=0,v=[1,0,0])fourbrackets();
translate([0,0,300])rotate(a=180,v=[1,0,0])fourbrackets();
rotate(a=90,v=[0,0,1])translate([0,0,300])rotate(a=180,v=[1,0,0])fourbrackets();

translate([-150,-10,0])rotate(a=90,v=[1,0,0])angle_bracket();
rotate(a=180,v=[0,0,1])translate([-150,-10,0])rotate(a=90,v=[1,0,0])angle_bracket();

translate([-150,-10,280])rotate(a=90,v=[1,0,0])angle_bracket();
translate([0,0,280])rotate(a=180,v=[0,0,1])translate([-150,-10,0])rotate(a=90,v=[1,0,0])angle_bracket();


