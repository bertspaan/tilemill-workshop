Map {
  font-directory: url(./fonts);  
}

#buurt { 
  line-color: black;
  line-width: 0.8;
  
  [BEV_DICHTH < 1000] {
    polygon-fill: #ffffb2;
  }
  
  [BEV_DICHTH >= 1000][BEV_DICHTH < 8000] {
    polygon-fill: #fecc5c;
  }
  
  [BEV_DICHTH >= 8000][BEV_DICHTH < 15000] {
    polygon-fill: #fd8d3c;
  }
  
  [BEV_DICHTH >= 15000] {
    polygon-fill: #e31a1c;
  }
}

#labels { 
  text-name: "[BU_NAAM]";
  text-face-name: "Open Sans Regular","DejaVu Sans Book","unifont Medium";
  text-placement-type: simple;
  text-placements: "N";
  text-dy: 3;
  text-dx: 3;    
  text-size: 12;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-halo-radius: 1.2;
  text-halo-fill: #fff;
  text-min-distance: 2;
}
