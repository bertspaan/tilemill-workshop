# TileMill Tutorial

http://www.osgeo.nl/osgeonl_dag_2013.html

https://www.mapbox.com/tilemill/docs/manual/

## Data

OpenStreetMap

http://download.geofabrik.de/europe/netherlands.html
http://metro.teczno.com/#rotterdam

PDOK
NLExtract
CitySDK


    +proj=stere +lat_0=52.15616055555555 +lon_0=5.38763888888889 +k=0.999908 +x_0=155000 +y_0=463000 +ellps=bessel +units=m +no_defs  no_defs

## Style


http://macwright.org/presentations/carto-foss4g/#0
http://www.youtube.com/watch?v=5iOFllvrY2M


geojson.io
shapely
PostGIS


## QGIS
http://gis.stackexchange.com/questions/26198/creating-new-layer-from-selection-in-quantum-gis

pgsql2shp -f bag.shp -h localhost -u postgres -P postgres energielabelatlas "SELECTyear, b.geom, mode(gebruiksdoel) AS function FROM buildings b JOIN addresses a ON a.building_id = b.id JOIN municipalities m ON ST_intersects(b.geom, m.geom) WHERE m.name = 'Delft' GROUP BY a.id, year, b.geom, building_id;"
