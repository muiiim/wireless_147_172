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

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(
      () {
        _marker.add(
          Marker(
              markerId: MarkerId('id'),
              position:
                  LatLng(widget.stationLocation[0], widget.stationLocation[1]),
              infoWindow: InfoWindow(title: widget.stationLocation[2])),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.stationLocation[2] + ' Map',
            style: TextStyle(color: firstColor)),
        backgroundColor: secondColor,
        iconTheme: IconThemeData(color: firstColor),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.stationLocation[0], widget.stationLocation[1]),
          zoom: 15.0,
        ),
        mapType: MapType.normal,
      ),
    );
  }
}
