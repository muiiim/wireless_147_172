import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gas Station',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        MyHomePage.routeName:(context) => const MyHomePage(),
        FirstPage.routeName:(context) => const FirstPage(),
        SecondPage.routeName:(context) => const SecondPage(),
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const routeName = '/';
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gas U Nee'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Welcome to Gas U Nee')
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, FirstPage.routeName);
        },
        tooltip: 'Increment',
        child: Icon(Icons.location_on_outlined),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const routeName = '/first';

  /*static List<String> stationStr = [
    'PTT station', 'Shell station', 'PT station'
  ];
  final List<GasStation> stationList = List.generate(stationStr.length, (index) => null)*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gas U Nee'),
      ),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(image: AssetImage(GasStation.PTT.stationImg)),
              ElevatedButton(
                  child: const Text('More details'),
                  onPressed: () {
                    Navigator.pushNamed(context, SecondPage.routeName, arguments: GasStation.PTT);
                  }
              )
            ]
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static const routeName = '/second';
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as GasStation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gas station'),
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                data.stationName,
                style: TextStyle(fontSize: 50, color: Colors.blue),
              ),
              Image(
                  image: AssetImage(data.stationImg)
              ),
              Text(
                data.stationLocation,
                style: TextStyle(fontSize: 15),
              ),
              Text(
                data.stationInfo,
                style: TextStyle(fontSize: 15),
              ),
            ],
          )),
    );
  }
}

class GasStation {
  String stationName;
  String stationImg;
  String stationLocation;
  String stationInfo;

  GasStation(
      this.stationName,
      this.stationImg,
      this.stationLocation,
      this.stationInfo,
      );

  static GasStation PTT = GasStation(
      'PTT station',
      'assets/PTT.png',
      '89/14 Soi 2 Bang Phai, Bang Khae, Bangkok 10160',
      'Gasohol 95, Gasohol 91, E20, Diesel B7'
  );
}
