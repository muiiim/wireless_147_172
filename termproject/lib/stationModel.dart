import 'dart:ffi';

class StationModel {
  String name;
  String imgName;
  double lat;
  double long;
  String des;
  double km;

  StationModel(this.name, this.imgName, this.lat, this.long, this.des, this.km);

  static List<StationModel> getStationData() {
    return [
      StationModel(
        'Shell',
        'Shell',
        13.7330075,
        100.4031456,
        'Coffee shop, Toilet',
        4.3,
      ),
      StationModel(
        'Esso',
        'Esso',
        13.7547298,
        100.4121623,
        'Coffee shop, Toilet',
        4.3,
      ),
      StationModel(
        'Bangchak',
        'Bangchak',
        13.7201448,
        100.4053104,
        'Coffee shop, Toilet',
        7.2,
      ),
      StationModel(
        'Caltex',
        'Caltex',
        13.7831927,
        100.402491,
        'Coffee shop, Toilet',
        7.2,
      ),
      StationModel(
        'PTT',
        'PTT',
        13.7675535,
        100.4079424,
        'Coffee shop, Toilet',
        8.5,
      ),
    ];
  }
}
