Map {
  background-color: #000;
}

#buildings {
  [YEAR<1800] {
    polygon-fill: #A50026;
  }
  [YEAR>=1800][YEAR<1850] {
    polygon-fill: #D73027;
  }
  [YEAR>=1850][YEAR<1900] {
    polygon-fill: #F46D43;
  }
  [YEAR>=1900][YEAR<1930] {
    polygon-fill: #FDAE61;
  }
  [YEAR>=1930][YEAR<1945] {
    polygon-fill: #FEE090;
  }
  [YEAR>=1945][YEAR<1960] {
    polygon-fill: #FFFFBF;
  }
  [YEAR>=1960][YEAR<1975] {
    polygon-fill: #E0F3F8;
  }
  [YEAR>=1975][YEAR<1985] {
     polygon-fill: #ABD9E9;
  }
  [YEAR>=1985][YEAR<1995] {
    polygon-fill: #74ADD1;
  }
  [YEAR>=1995][YEAR<2005] {
    polygon-fill: #4575B4;
  }
  [YEAR>=2005] {
    polygon-fill: #313695;
  } 
  
}