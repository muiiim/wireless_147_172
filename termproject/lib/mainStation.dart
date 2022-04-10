import 'package:flutter/material.dart';
import 'package:project22/constants.dart';
import 'package:project22/stationDetails.dart';
import 'package:project22/stationModel.dart';

class MainStation extends StatelessWidget {
  List<stationModel> stationList = stationModel.getStationData();

  MainStation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The gas station', style: TextStyle(color: firstColor)),
          backgroundColor: secondColor,
          iconTheme: IconThemeData(color: firstColor),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: stationList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => stationDetails(stations: stationList[index]),
                                ),
                              );
                            },
                            child: Container(
                                margin: const EdgeInsets.all(20),
                                height: 200,
                                child: Stack(children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          'assets/images/' +
                                              stationList[index].imgName +
                                              'Station.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.4),
                                            Colors.transparent
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 15,
                                      right: 15,
                                      child: Row(children: [
                                        Text(
                                          stationList[index].name + '  ',
                                          style: TextStyle(
                                              color: secondColor, fontSize: 20),
                                        ),
                                        ClipOval(
                                          child: Image.asset(
                                            'assets/images/' +
                                                stationList[index].imgName +
                                                'logo.png',
                                            fit: BoxFit.cover,
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ]))
                                ])));
                      }))
            ],
          ),
        ));
  }
}
