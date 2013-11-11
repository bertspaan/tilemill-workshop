# TileMill-workshop

Op 13 november geef ik een workshop TileMill op de [OSGeo.nl-dag](http://www.osgeo.nl/osgeonl_dag_2013.html). In deze GitHub-repository staan de [presentatie](http://bertspaan.nl/tilemill-workshop), [voorbeelddata](https://github.com/bertspaan/tilemill-workshop/tree/gh-pages/data)
, [voorbeeldkaarten](https://github.com/bertspaan/tilemill-workshop/tree/gh-pages/tilemill). In dit README-bestand een aantal links ter voorbereiding op de workshop.

_De presentatie is nog niet af, en ook dit bestand zal ik tot aan de workshop blijven bijwerken_

## Tilemill

Met [TileMill](https://www.mapbox.com/tilemill/), een opensourceprogramma van [MapBox](http://www.mapbox.com/), zijn eenvoudig mooie interactieve webkaarten te maken. Waar voorheen dure geografische databestanden en ingewikkelde software zoals ArcGIS nodig waren, kan nu iedereen met simpele webtechnieken, open data en opensourcesoftware gelijk aan de slag.

Voorbeeldkaarten op TileMill-site:
- https://www.mapbox.com/tilemill/gallery/

Handboek en crashcourse:
- https://www.mapbox.com/tilemill/docs/manual/
- https://www.mapbox.com/tilemill/docs/crashcourse/introduction/

Kaarten in TileMill worden vormgegeven met CartoCSS, een opmaaktaal die erg op CSS lijkt. Wanneer u niet bekend met CSS is het wellicht handig om wat basisdocumentatie over CSS te lezen:

- https://github.com/mapbox/carto
- https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started

TileMill kan met het eenvoudig te lezen en bewerken GeoJSON-formaat overweg:
- http://en.wikipedia.org/wiki/GeoJSON
- https://github.com/bertspaan/tilemill-workshop/blob/gh-pages/data/cbs/buurt.geojson
- http://geojson.io

[Tom MacWright](http://macwright.org/) van MapBox heeft ook een aantal interessantie presentaties over TileMill en CartoCSS gehouden:

- http://macwright.org/presentations/carto-foss4g/#0
- http://www.youtube.com/watch?v=5iOFllvrY2M

En, natuurlijk mijn gebouwenkaart:

- http://citysdk.waag.org/buildings/
- https://github.com/waagsociety/citysdk/tree/master/demos/buildings

## Data

Wanneer je databestanden die in het Nederlandse coördinatenstelsel (Rijksdriehoekstelsel, EPSG:28992) zijn opgeslagen wilt toevoegen zul je TileMill handmatig moeten vertellen wat de juiste projectie is. Dit kan in het`SRS`-veld van het laagmenu:

    +proj=stere +lat_0=52.15616055555555 +lon_0=5.38763888888889 +k=0.999908 +x_0=155000 +y_0=463000 +ellps=bessel +units=m +no_defs  no_defs

### OpenStreetMap

- http://download.geofabrik.de/europe/netherlands.html
- http://metro.teczno.com/#rotterdam

### PDOK

### NLExtract


## Style

- http://colorbrewer2.org/js/



## Tools

### QGIS

### geojson.io

### PostGIS

### Shapely

### CitySDK

### Leaflet
