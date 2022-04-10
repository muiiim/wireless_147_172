class stationModel {
  String name;
  String imgName;
  String desc;

  stationModel(
    this.name,
    this.imgName, 
    this.desc
    );

  static List<stationModel> getStationData() {
    return [
      stationModel(
        'PTT',
        'PTT',
        '..',
      ),
      stationModel(
        'Bangchak',
        'Bangchak',
        '..',
      ),
      stationModel(
        'Esso',
        'Esso',
        '..',
      ),
      stationModel(
        'Caltex',
        'Caltex',
        '..',
      ),
      stationModel(
        'Shell',
        'Shell',
        '..',
      ),
    ];
  }
}
