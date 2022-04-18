import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:geolocator/geolocator.dart';

class currentLocation extends StatefulWidget {
  @override
  _currentLocationState createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  @override
  var long = "longitude";
  var lat = "latitude";
  void getlocation() async {
    LocationPermission per = await Geolocator.checkPermission();
    LocationPermission per1 =
        await Geolocator.requestPermission(); // request permission for location
    if (per == LocationPermission.denied ||
        per == LocationPermission.deniedForever) {
      LocationPermission per = await Geolocator
          .requestPermission(); // ask again because user denied request
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(
          // get location
          desiredAccuracy: LocationAccuracy.best);
      setState(
        () {
          long = currentLoc.longitude.toString();
          lat = currentLoc.latitude.toString();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My location', style: TextStyle(color: firstColor)),
        backgroundColor: secondColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "logitude : " + long,
              style: TextStyle(
                color: secondColor,
                fontSize: 20,
              ),
            ),
            Text(
              "latitude : " + lat,
              style: TextStyle(
                color: secondColor,
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: secondColor,
              ),
              child: Text("Get Location", //button to get lat/long
                  style: TextStyle(color: firstColor, fontSize: 20)),
              onPressed: getlocation,
            ),
          ],
        ),
      ),
    );
  }
}
