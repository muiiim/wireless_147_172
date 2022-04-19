import 'dart:ffi';

class StationModel {
  String name;
  String imgName;
  double lat;
  double long;
  String des;

  StationModel(this.name, this.imgName, this.lat, this.long, this.des);

  static List<StationModel> getStationData() {
    return [
      StationModel(
        'PTT',
        'PTT',
        13.7430672,
        100.3886944,
        'Coffee shop, Toilet',
      ),
      StationModel(
        'Bangchak',
        'Bangchak',
        13.7324215,
        100.3860827,
        'Coffee shop, Toilet',
      ),
      StationModel(
        'Esso',
        'Esso',
        13.7653262,
        100.3821206,
        'Coffee shop, Toilet',
      ),
      StationModel(
        'Caltex',
        'Caltex',
        13.7639168,
        100.3805248,
        'Coffee shop, Toilet',
      ),
      StationModel(
        'Shell',
        'Shell',
        13.7633302,
        100.3811636,
        'Coffee shop, Toilet',
      ),
    ];
  }
}
