import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:project22/mainStation.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "assets/images/gasLogo.png",
            width: 250,
            height: 250,
          ),
          Text('_______________________', style: TextStyle(color: thirdColor)),
          Text(
            '\nThe nearest gas station\n',
            style: TextStyle(color: secondColor, fontSize: 20),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: secondColor,
            ),
            child: Text("Get started",
                style: TextStyle(color: firstColor, fontSize: 15)),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MainStation(),
                ),
              );
            },
          )
        ],
      ),
    ));
  }
}
