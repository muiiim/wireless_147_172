import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:project22/map.dart';
import 'package:project22/stationModel.dart';

class StationDetails extends StatefulWidget {
  StationModel stations;

  StationDetails({
    Key? key,
    required this.stations,
  }) : super(key: key);

  @override
  _StationDetailstate createState() {
    return _StationDetailstate();
  }
}

class _StationDetailstate extends State<StationDetails> {
  @override
  Widget build(BuildContext context) {
    print(widget.stations.lat);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.stations.name + ' Station',
            style: TextStyle(color: firstColor)),
        backgroundColor: secondColor,
        iconTheme: IconThemeData(color: firstColor),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/' + widget.stations.imgName + 'logo.png',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Text(
                    ' ' + widget.stations.name + ' Station',
                    style: TextStyle(
                      color: secondColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: thirdColor,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'assets/images/' + widget.stations.imgName + 'Station.jpg',
                width: 300,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: secondColor,
              ),
              child: Text("Direction",
                  style: TextStyle(color: firstColor, fontSize: 15)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        MapScreen(stationLocation: [widget.stations.lat,widget.stations.long,widget.stations.name],),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
