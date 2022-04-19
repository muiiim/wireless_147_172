import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  final List stationLocation;
  MapScreen({
    Key? key,
    required this.stationLocation,
  }) : super(key: key);
  _MapScreenState createState() {
    return _MapScreenState();
  }
}

class _MapScreenState extends State<MapScreen> {
  @override
  late GoogleMapController mapController;
  Set<Marker> _marker = {};
  // static double lati = widget.stationLocation;
  // static double longi = -122.677433;
  // final LatLng center = LatLng(lati, longi);

  static final Marker _destination = Marker(
      markerId: MarkerId('destination'), infoWindow: InfoWindow(title: ''));

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(
      () {
        _marker.add(
          Marker(
            markerId: MarkerId('id'),
            position:
                LatLng(widget.stationLocation[0], widget.stationLocation[1]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.stationLocation[0]);
    print(widget.stationLocation[1]);
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
          target: LatLng(widget.stationLocation[0], widget.stationLocation[1]),
          zoom: 13.0,
        ),
        mapType: MapType.normal,
      ),
    );
  }
}
