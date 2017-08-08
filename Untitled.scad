

module f() {
    translate([10,0,0])
    color([1,0,0]) cube([12,4,12]);
    
    translate([4,-1,4])
    color([0,1,0]) cube([4,6,4]);

    translate([8,-1,8])
    color([0,0,1]) cube([4,6,4]);
}

// f();

// translate([10,0,0])

// cylinder(10);

module tapa1(x,y,z) {
    difference() {
        
        diam = 2;
        holgura = 3;
        
        fondo_tapa = 3;
        fondo_rosca = 5;
        
        cube([x,y,z]);             

        translate( [ diam*2 + holgura*2, holgura, fondo_tapa ] )
        cube([x - (diam*2 + holgura*2) * 2 , y - (holgura * 2) ,z]);

        translate( [ holgura, diam*2 + holgura*2, fondo_tapa ] )
        cube([ x - (holgura * 2) , y - (diam*2 + holgura*2) * 2 , z ]);
        
        
        translate([diam+holgura,diam+holgura, z - fondo_rosca])
        cylinder(r=diam, h=z, $fn=100);
        
        translate([x-diam-holgura,diam+holgura, z - fondo_rosca])
        cylinder(r=diam, h=z, $fn=100);
        
        translate([diam+holgura,y-diam-holgura, z - fondo_rosca])
        cylinder(r=diam, h=z, $fn=100);
    
        translate([x-diam-holgura,y-diam-holgura, z - fondo_rosca])
        cylinder(r=diam, h=z, $fn=100);
               
    }
}

module tapa2(x,y,z) {
     
        diam = 2;
        rosca = 4;
        holgura = 3;
        
        cube([x,y,z]);
    
        translate([diam+holgura,diam+holgura, z])
        cylinder(r=diam, h=rosca, $fn=100);
        
        translate([x-diam-holgura,diam+holgura, z])
        cylinder(r=diam, h=rosca, $fn=100);
        
        translate([diam+holgura,y-diam-holgura, z])
        cylinder(r=diam, h=rosca, $fn=100);
    
        translate([x-diam-holgura,y-diam-holgura, z])
        cylinder(r=diam, h=rosca, $fn=100);        
}

module tapa3(x,y,z,d) {
    
        translate([ x/4 + (x/4 / 2) , 0, z - d])       
        cube([x/4,y/4, z]);
    
}



module f1() {
x=30;
y=20;
z=4;
diam = 1;
holgura = 1;

translate([0,0,0])
cube([x,y,z]); 

translate( [ diam*2 + holgura*2, holgura, 2 ] )
color([1,0,0])
cube([x - (diam*2 + holgura*2) * 2 , y - (holgura * 2) ,z]);

translate( [ holgura, diam*2 + holgura*2, 2 ] )
color([0,0,1])
cube([ x - (holgura * 2) , y - (diam*2 + holgura*2) * 2 , z ]);
    
}

// f1();

//translate( [ diam*2 + holgura*2, holgura, 2 ] )

//color(0,1,0)
//cube (x,y,z);


tapa1(40,20,10);

difference() {
    translate([50,0,0])
    tapa2(40,20,2);

    translate([50,0,0])
    tapa3(40,20,0,0);
}

