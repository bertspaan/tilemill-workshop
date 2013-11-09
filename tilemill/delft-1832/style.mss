// Colors:

@buildings:     #b24224;
  
@erf:          #9cca53;
@weiland:      #9be956;
@boshakhout:   #597e0a;
@tuin:         rgb(20, 180, 30);
@weg:          rgb(255, 255, 255);
@water:        rgb(100, 195, 234);
@bouwland:     rgb(143, 175, 14);
@rietland:     #eda755;
@bleekveld:    #e4f3c2;
@boomgaard:    #f83f3f;

// Elements:
  
Map {
  background-image : url("paper.jpg");
}

#gebouwen1832::pattern {
  polygon-pattern-file : url("paper.jpg");  
}

#gebouwen1832 {
  polygon-comp-op: multiply;
  polygon-fill: @buildings;
  line-color: darken(@buildings, 15%);
  line-width: 1.5px;
  
}
  
#delft1832 {
  polygon-fill: #999;
  //polygon-opacity: 0.8;
  polygon-comp-op: multiply;
  
  [SOORTCUL='bouwland'] {
	polygon-fill: @bouwland;  
  }
  
  [SOORTCUL='bos hakhout'] {
	polygon-fill: @boshakhout;  
  }
  
  [SOORTCUL='boomgaard'] {
	polygon-fill: @boomgaard;  
  }
  
  [SOORTCUL='bleekveld'] {
	polygon-fill: @bleekveld;  
  }
  
  [SOORTCUL='weiland'] {
	polygon-fill: @weiland;  
  }
  
  [SOORTCUL='water'] {
	polygon-fill: @water;  
  }
  
  [SOORTCUL='erf'] {
	polygon-fill: @erf;  
  }
  
  [SOORTCUL='rietland'] {
	polygon-fill: @rietland;  
  }
  
  [SOORTCUL='tuin'] {
	polygon-fill: @tuin;  
  }

  [SOORTCUL='weg'] {
	polygon-fill: @weg;
    polygon-comp-op: lighten;
  }
  

  
}




