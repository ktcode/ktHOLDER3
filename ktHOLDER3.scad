//
// ktHOLDER3
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

in = 26/2;
out = in+panel_thick;
sh = 25;
hh = 50;




translate([sh, 0, 0]) L();
mirror([1, 0, 0]) translate([sh, 0, 0]) L();

module L()
{
    difference()
    {
        union()
        {
            cylinder(h=hh, r=out, center=true, $fn=300);
            
            translate([-out-3, 0, 0]) rotate([90, 0, 0])
            {
                translate([4/2, 0, 0]) cube([4, 8, 8], center=true);
                cylinder(h=8, r=8/2, center=true, $fn=50);
            }
            
            translate([out+3, 0, 0]) rotate([90, 0, 0])
            {
                translate([-4/2, 0, 0]) cube([4, 8, 8], center=true);
                cylinder(h=8, r=8/2, center=true, $fn=50);
            }
        }
        
        //dell
        cylinder(h=hh+gap2, r=in, center=true, $fn=300);
        
        translate([-out-3, 0, 0]) rotate([90, 0, 0])
        {
            translate([0, 0, -5])cylinder(10, 1.6, 1.6, $fn=30);
            translate([0, 0, 1])cylinder(5, 6.5/2+0.1, 6.5/2+0.1, $fn=6);
            translate([0, 0, -5-1])cylinder(5, 6.5/2+0.1, 6.5/2+0.1, $fn=6);
        }
        translate([out+3, 0, 0]) rotate([90, 0, 0])
        {
            translate([0, 0, -5])cylinder(10, 1.6, 1.6, $fn=30);
            translate([0, 0, 1])cylinder(5, 6.5/2+0.1, 6.5/2+0.1, $fn=6);
            translate([0, 0, -5-1])cylinder(5, 6.5/2+0.1, 6.5/2+0.1, $fn=6);
        }
        
        //half
        translate([-50, 0, -50]) cube([200, 50, 200]);
    }
}
