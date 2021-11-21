import 'package:json_manipulation/models/placement_model.dart';

class InventoryModel {
  int inventoryId;
  String name;
  String type;
  List<String> tags;
  int purchasedAt;
  PlacementModel placement;

  InventoryModel({
    this.inventoryId,
    this.name,
    this.type,
    this.tags,
    this.purchasedAt,
    this.placement,
  });

  InventoryModel.fromJson(Map<String, dynamic> json) {
    inventoryId = json['inventory_id'];
    name = json['name'];
    type = json['type'];
    tags = json['tags'];
    purchasedAt = json['purchased_at'];
    placement = PlacementModel.fromJson(json['placement']);
  }
}
