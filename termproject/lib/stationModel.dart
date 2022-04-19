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
        13.7430672,
        100.3886944,
      ),
      StationModel(
        'Bangchak',
        'Bangchak',
        13.7324215,
        100.3860827,
      ),
      StationModel(
        'Esso',
        'Esso',
        13.7653262,
        100.3821206,
      ),
      StationModel(
        'Caltex',
        'Caltex',
        13.7639168,
        100.3805248,
      ),
      StationModel(
        'Shell',
        'Shell',
        13.7633302,
        100.3811636,
      ),
    ];
  }
}
