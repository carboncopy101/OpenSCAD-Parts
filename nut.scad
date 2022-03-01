

nut_ac=19;
nut_af=16;
nut_dy=0.5*nut_af*tan(30);
nut_dx=nut_af/2;
nut_h=8.4;
$fn =20;

 module nut(size){
    nut_ac=0;
    nut_af=0;
    nut_h=0;
    //echo("size",size);
     if(size==3){
        nut_ac=6.01;
        nut_af=5.5;
        nut_h=2.4;
         
        nut_dy=0.5*nut_af*tan(30);
        nut_dx=nut_af/2;
     
        color("silver")render()difference(){
        linear_extrude(height=nut_h)polygon([[0,nut_ac/2],[nut_dx,nut_dy],[nut_dx,-nut_dy],[0,-nut_ac/2],[-nut_dx,-nut_dy],[-nut_dx,nut_dy]]);
        
        cylinder(h=nut_h,r=size/2);  
        }
     }
         
     else if(size==5){
        nut_ac=8.79;
        nut_af=8;
        nut_h=4.7;
         
        nut_dy=0.5*nut_af*tan(30);
        nut_dx=nut_af/2;
     
        color("silver")render()difference(){
        linear_extrude(height=nut_h)polygon([[0,nut_ac/2],[nut_dx,nut_dy],[nut_dx,-nut_dy],[0,-nut_ac/2],[-nut_dx,-nut_dy],[-nut_dx,nut_dy]]);
        
        cylinder(h=nut_h,r=size/2);  
        }
     }
     else if(size==10){
        nut_ac=17;
        nut_af=16;
        nut_h=8.4;
         
        nut_dy=0.5*nut_af*tan(30);
        nut_dx=nut_af/2;
     
        color("silver")render()difference(){
        linear_extrude(height=nut_h)polygon([[0,nut_ac/2],[nut_dx,nut_dy],[nut_dx,-nut_dy],[0,-nut_ac/2],[-nut_dx,-nut_dy],[-nut_dx,nut_dy]]);
        echo("nut_ac",nut_ac);
        cylinder(h=nut_h,r=size/2);  
        }
  
     }
     
    
 }



nut(5);