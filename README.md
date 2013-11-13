# TileMill-workshop

Op 13 november geef ik een workshop TileMill op de [OSGeo.nl-dag](http://www.osgeo.nl/osgeonl_dag_2013.html). In deze GitHub-repository staan de [presentatie](http://bertspaan.nl/tilemill-workshop), [voorbeelddata](https://github.com/bertspaan/tilemill-workshop/tree/gh-pages/data)
, [voorbeeldkaarten](https://github.com/bertspaan/tilemill-workshop/tree/gh-pages/tilemill). In dit README-bestand een aantal links ter voorbereiding op de workshop.

## Tilemill

Met [TileMill](https://www.mapbox.com/tilemill/), een opensourceprogramma van [MapBox](http://www.mapbox.com/), zijn eenvoudig mooie interactieve webkaarten te maken. Waar voorheen dure geografische databestanden en ingewikkelde software zoals ArcGIS nodig waren, kan nu iedereen met simpele webtechnieken, open data en opensourcesoftware gelijk aan de slag.

Voorbeeldkaarten op TileMill-site:
- https://www.mapbox.com/tilemill/gallery/

Inleiding _How do web maps work?_:
- https://www.mapbox.com/developers/guide/

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

De eerste stap bij elke (digitale) kaart: data. U kunt natuurlijk zelf met de hand punten, lijnen en vlakken tekenenen, of met uw GPS-apparaat data verzamelen, maar er is gelukkig al heel veel geografische brondata beschikbaar die u vrij kunt gebruiken.

### OpenStreetMap

http://www.openstreetmap.org/

Open source wereldkaart. Straten, rivieren, steden, grenzen, POI's, spoorwegen, meren, en van alles nog wat. Wellicht kent u de Google Maps-achtige kaart op http://www.openstreetmap.org/, maar het gaat om de database waarmee deze kaart gemaakt is. Deze is vrij beschikbaar, en door iedereen te gebruiken en aan te vullen. De database is in z'n geheel te downloaden (30 GB gecomprimeerd, 400 GB uitgepakt), maar er zijn ook eenvoudiger te behappen uittreksels te downloaden:

- http://download.geofabrik.de/europe/netherlands.html
- http://metro.teczno.com/#rotterdam

Het duurt even voordat je het organisch gegroeide en niet altijd consistente key/value-systeem van OSM in de smiezen hebt, maar uiteindelijk kun je met OSM-data de prachtigste kaarten maken. Deze pagina's kunnen helpen:

- http://wiki.openstreetmap.org/wiki/Tags
- http://wiki.openstreetmap.org/wiki/Key:highway
- http://wiki.openstreetmap.org/wiki/Key:amenity

### PDOK

http://www.pdok.nl/

Overheidsportaal voor geografische open data.

### NLExtract

http://www.nlextract.nl/

Open souce tool om eenvoudig de [BAG](http://www.kadaster.nl/bag) en [TOP10NL](http://www.kadaster.nl/web/artikel/productartikel/TOP10NL.htm) te downloaden, importeren en gebruiken.

### Open data-portals

http://www.amsterdamopendata.nl/home
http://www.rotterdamopendata.nl/home
https://data.overheid.nl/

Veel overheden, lokaal en landelijk, in Nederland en over de hele wereld, beginnen open data-portalen. Vaak onhandige sites en helaas vaak ook onhandige, verouderde data in allerlei bestandsformaten. Maar soms vind je precies wat je zoekt.

### Natural Earth

http://www.naturalearthdata.com/

Veel data voor het maken van kaarten op wereld-, continent- en landschaal. Grenzen, rivieren, hoogtedata en meer. Direct beschikbaar via TileMill.

### CitySDK

http://citysdk.waag.org

In Europees verband ontwikkelde open data-API, ontwikkeld door [Waag Society](http://www.waag.org). Verzamelt, koppelt, verrijkt en distribueert verschillende open datasets zoals de BAG, OSM, CBS en GTFS, en maakt deze beschikbaar via een simpele REST API.

Nog geen functie om naar GeoJSON te exporteren, maar daar ben ik mee bezig.

## Style

Wanneer is een kaart mooi? Er zijn eindeloos veel theoriën over wanneer welke lettertypes te gebruiken, hoe labels bij punten te plaatsen en hoe vlakken in te kleuren. Maar het leuke van TileMill is juist dat je een eigen, persoonlijke kaart kunt maken die bij je eigen voorgevingswensen aansluit. De zee mag best rood.

Handige tool voor het genereren van kleurschema's:

- http://colorbrewer2.org/js/

Wanneer u een basiskaart wilt maken aan de hand van OpenStreetMap is osm-bright een goed startpunt:

- https://github.com/mapbox/osm-bright

## Bestandsformaten

TileMill kan overweg met de meest gangbare GIS-bestanden. Voor een volledige lijst, zie:

- https://www.mapbox.com/tilemill/docs/manual/adding-layers/

### Shapefile

http://en.wikipedia.org/wiki/Shapefile

Zo'n beetje de standaardmanier om geografische data uit te wisselen. Punten, lijnen en vlakken moeten elk in een apart bestand, maar verder is er niet zo veel mis mee.

### GeoJSON

https://github.com/mapbox/togeojson

Op JSON gebaseerd bestandsformaat. Makkelijk te lezen door mensen, en direct in JavaScript te gebruiken. Niet geschikt voor enorme hoeveelheden data, maar juist uitermate geschikt voor webcartografie, Leaflet en TileMill.

## Coördinatenstelsels

TileMill kan omgaan met de voor webkaarten meest gangbare coördinatenstelsels. Wanneer je databestanden die in het Nederlandse coördinatenstelsel (Rijksdriehoekstelsel, EPSG:28992) zijn opgeslagen wilt toevoegen zul je TileMill handmatig moeten vertellen wat de juiste projectie is. Dit kan in het`SRS`-veld van het laagmenu:

    +proj=stere +lat_0=52.15616055555555 +lon_0=5.38763888888889 +k=0.999908 +x_0=155000 +y_0=463000 +ellps=bessel +units=m +no_defs  no_defs

## Tools

Er zijn steeds meer en steeds betere open source GIS-tools. Hieronder een selectie van software die ik vaak gebruik.

### QGIS

http://www.qgis.org/

Open source GIS-software. Wordt steeds beter, maar redelijk ondoorgrondelijke gebruikersinterface. Als je kunt programmeren is het vaak handiger Shapely of PostGIS te gebruiken om GIS-bewerkingen uit te voeren.

### ogr2ogr

http://www.gdal.org/ogr2ogr.html

Onderdeel van [GDAL](http://www.gdal.org/), kan enorm veel verschillende GIS-bestanden converteren.

### geojson.io

http://geojson.io/

Web-editor, kan verschillende GIS-bestanden openen, bewerken en als GeoJSON opslaan. Heel handig om kleine geografische bestanden te maken en te bewerken.

### PostGIS

http://postgis.net/

GIS-uitbreiding voor [PostgreSQL](http://www.postgresql.org/), een open source database.

### Shapely

https://pypi.python.org/pypi/Shapely

GIS-bibliotheek voor Python. Bijvoorbeeld handig als je niet de soms omslachtige interface van QGIS wilt gebruiken en geen zin hebt om een hele PostGIS-database te gebruiken. Voorbeelden in [blogpost](http://macwright.org/2012/10/31/gis-with-python-shapely-fiona.html) van Tom MacWright.

### Leaflet

http://leafletjs.com/

Kaarten in browser met JavaScript. [Voorbeeldproject](https://github.com/bertspaan/tilemill-workshop/tree/gh-pages/viewer).
