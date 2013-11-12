# Kaartviewer

Boilerplate-code voor kaartviewer die gebruik maakt van [Leaflet](http://leafletjs.com/). De viewer maakt gebruik van [MapQuest-OSM Tiles](http://developer.mapquest.com/web/products/open/map), maar de tile-url is eenvoudig aan te passen in `index.html`.

Meer informatie over Leaflet:

- http://leafletjs.com/examples/quick-start.html
- http://leafletjs.com/reference.html

## Hosten van kaarttiles

Je kunt ook eenvoudig je eigen tiles hosten die je met TileMill gemaakt hebt. Dit kan met een aparte tileserver zoals [TileStream](https://github.com/mapbox/tilestream), of door het met TileMill gemaakte `.mbtiles`-bestand uit te pakken - zo'n bestand is een simpele [SQLite-database](http://www.sqlite.org/) die allemaal losse kaartvierkantjes bevat. Met [MBUtil](https://github.com/mapbox/mbutil) is zo'n bestand weer in losse bestanden op te delen, die dan door een willekeurige webserver (of door [GitHub](http://pages.github.com/)) kunnen worden gehost.

Gedetailleerde informatie over kaarttiles:

- http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames


