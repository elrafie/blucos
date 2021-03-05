
//import 'package:flappy_search_bar/search_bar_style.dart';
//import 'package:blucos/utilities/utilities.dart';
import 'package:blucos/utilities/src/constants.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart' as coord;
import 'package:flutter_map/flutter_map.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';


class MapScreen extends StatelessWidget {
  static const routeID = '/';

  final SearchBar search = new SearchBar(
    searchBarStyle: SearchBarStyle(
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(60)),
      padding: EdgeInsets.only(left:18.0),
    ),
    hintText: "Search",
    onSearch: null,
    onItemFound: null,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        MapPage(),
        SafeArea(
          child: Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: search,
            )
          )
        )
      ]
    );
  }
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => new _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: coord.LatLng(43.656, -79.39),
        zoom: 15.0,
        maxZoom: 18.49999999999999,
      ),
      children: <Widget>[
        TileLayerWidget(
          options: TileLayerOptions(
            urlTemplate: mapBoxStyleUrl + mapBoxToken
          ),
        ),
        MarkerLayerWidget(
          options: MarkerLayerOptions(
          markers: [
            Marker(
              width: 100.0,
              height: 100.0,
              point: coord.LatLng(43.659836, -79.3923917),
              builder: (ctx) => Container(
                child: Icon(Icons.location_on, color: Colors.red, size: 80.0),
              ),
            ),
            Marker(
              width: 80.0,
              height: 80.0,
              point: coord.LatLng(43.6555715, -79.3923128),
              builder: (ctx) => Container(
                child: Icon(Icons.location_on, color: Colors.red, size: 80.0),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
