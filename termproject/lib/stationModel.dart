import 'dart:ffi';

class StationModel {
  String name;
  String imgName;
  double lat;
  double long;

  StationModel(this.name, this.imgName, this.lat, this.long);

  static List<StationModel> getStationData() {
    return [
      StationModel(
        'PTT',
        'PTT',
        13.749125,
        100.388364,
      ),
      StationModel(
        'Bangchak',
        'Bangchak',
        45.521563,
        -122.677433,
      ),
      StationModel(
        'Esso',
        'Esso',
        13.749125,
        100.388364,
      ),
      StationModel(
        'Caltex',
        'Caltex',
        13.749125,
        100.388364,
      ),
      StationModel(
        'Shell',
        'Shell',
        13.749125,
        100.388364,
      ),
    ];
  }
}
