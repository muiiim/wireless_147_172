import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:project22/stationModel.dart';

class stationDetails extends StatefulWidget {
  final stationModel stations;

  const stationDetails({
    Key? key,
    required this.stations,
  }) : super(key: key);

  @override
  _StationDetailState createState() {
    return _StationDetailState();
  }
}

class _StationDetailState extends State<stationDetails> {
  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}
