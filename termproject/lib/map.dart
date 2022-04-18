import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
  final double? latLocation;
  final double? longLocation;
  MapScreen({this.latLocation, this.longLocation});
}

class _MapScreenState extends State<MapScreen> {
  @override
  late GoogleMapController mapController;
  Set<Marker> _marker = {};
  static double lati = MapScreen(latLocation: lati) as double;
  static double longi = MapScreen(longLocation: longi) as double;
  final LatLng center = LatLng(lati, longi);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(
      () {
        _marker.add(
          Marker(
            markerId: MarkerId('id'),
            position: center,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.latLocation);
    print(widget.longLocation);
    return Scaffold(
      appBar: AppBar(
        title: Text('Gas U Nee - Map', style: TextStyle(color: firstColor)),
        backgroundColor: secondColor,
        iconTheme: IconThemeData(color: firstColor),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition: CameraPosition(
          target: center,
          zoom: 12.0,
        ),
        mapType: MapType.normal,
      ),
    );
  }
}
