

xaxis=[1,0,0];
yaxis=[0,1,0];
zaxis=[0,0,1];
e=0.02;
pi=3.14;


fn=64;
module screw(h = 1){
    
        // basic diameter
    R=2;
    // pitch
    pitch=1*R;
    // height
    //h=5*pitch;
    //h=100;
    // trapezeudal thread
    // width of th base
    h_t=1;
    // angle of the faces of the thread
    a_t=60;
    // deapth of the thread
    d_t=0.5;
    for(i=[0:h/pitch*fn-1])
            rotate(360/fn*i,zaxis)translate(pitch/fn*i*zaxis)
            render()
            hull(){
                rotate(90+atan(pitch/(2*pi*R)),xaxis)translate(R*xaxis)
                    profile();
                rotate(360/fn,zaxis)translate(pitch/fn*zaxis)rotate(90+atan(pitch/(2*pi*R)),xaxis)translate(R*xaxis)
                    profile();
            }
    // center 
        translate(-pitch/2*zaxis)cylinder(h=h+pitch,r=R,$fn=fn);
            
    module profile(){
        linear_extrude(height=e,center=true)
        polygon([
            [-e,h_t/2],
            [d_t,(h_t/2-d_t*tan(90-a_t))],
            [d_t,-(h_t/2-d_t*tan(90-a_t))],
            [-e,-h_t/2]
        ]);
   }
}      


 
color("grey")screw(5);
