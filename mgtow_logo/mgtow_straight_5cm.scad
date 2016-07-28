
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_fg_arrow_3_mm(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-61.400830,-39.496270],[39.520430,61.424980],[51.453250,49.492150],[12.571750,10.610650],[12.571760,-28.205090],[21.008920,-28.205090],[4.133980,-57.399100],[-12.741520,-28.204490],[-4.303780,-28.204920],[-4.303770,-6.264720],[-49.468000,-51.428950],[-61.400830,-39.496120]]);
  }
}

module poly_fg_border_3_mm(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-1.503450,-80.851230],[-80.801290,-80.817030],[-80.876490,80.685880],[-80.875490,80.906590],[-80.721190,80.912590],[80.842270,80.874490],[80.861770,-80.743660],[-1.503450,-80.851080]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[71.649870,-71.638350],[71.587370,71.674150],[-71.683130,71.674150],[-71.660630,-71.602210],[71.649910,-71.638310]]);
    }
  }
}

module poly_bg_1_5_mm(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-88.392100,88.582680],[88.550680,88.528580],[88.557680,-88.582680],[-88.442900,-88.520780],[-88.557680,88.577890]]);
  }
}

module inkscape(h)
{

poly_fg_arrow_3_mm(3);
poly_fg_border_3_mm(3);
poly_bg_1_5_mm(1.5);
}

inkscape(5);
