class PlacementModel {
  int roomId;
  String name;

  PlacementModel({
    this.roomId,
    this.name,
  });

  PlacementModel.fromJson(Map<String, dynamic> json) {
    roomId = json['room_id'];
    name = json['name'];
  }
}
