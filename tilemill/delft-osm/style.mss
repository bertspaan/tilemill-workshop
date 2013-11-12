@road: white;
@road_outline: black;

@rail: #888;
@rail_outline: #222;

@water: #57d2f5;

Map {
  background-color: white;
}

#osm-line::outline {
  [highway='motorway'],
  [highway='motorway_link'],
  [highway='trunk'],
  [highway='trunk_link'],
  [highway='primary'],
  [highway='primary_link'],
  [highway='secondary'],
  [highway='secondary_link'],
  [highway='tertiary'],
  [highway='tertiary_link'],
  [highway='unclassified'],
  [highway='residential'],
  [highway='footway'],
  [highway='service'],
  [highway='pedestrian'] {
    line-width: 5px;
  	line-color: @road_outline;
  }
  
  [railway='rail'] {
    line-color: @rail_outline;
  }
}

#osm-line {
  [highway='motorway'],
  [highway='motorway_link'],
  [highway='trunk'],
  [highway='trunk_link'],
  [highway='primary'],
  [highway='primary_link'],
  [highway='secondary'],
  [highway='secondary_link'],
  [highway='tertiary'],
  [highway='tertiary_link'],
  [highway='unclassified'],
  [highway='residential'],
  [highway='footway'],
  [highway='service'],
  [highway='pedestrian'] {
    line-width: 3px;
  	line-color: @road;
  }
  
  [railway='rail'] {
    line-color: @rail;
  }
}

#osm-polygon::outline {
  [water='pond'],
  [natural='water'] {
    line-color: darken(@water, 30%);
    line-width: 1.5px;
  }
}

#osm-polygon {
  [water='pond'],
  [natural='water'] {
    polygon-fill: @water;
  }
}