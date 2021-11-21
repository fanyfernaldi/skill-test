import 'package:json_manipulation/data_json/data_json.dart';
import 'package:json_manipulation/models/inventory_model.dart';

class InventoryService {
  List<InventoryModel> getInventories() {
    var inventories = data_body.map((e) => InventoryModel.fromJson(e)).toList();
    return inventories;
  }

  String getItemsInTheMeetingRoom() {
    var inventories = getInventories();
    var inventoriesOfMeetingRoom = inventories
        .where((element) => element.placement.name == 'Meeting Room');
    var items = [];
    for (var inventoryOfMeetingRoom in inventoriesOfMeetingRoom) {
      items.add(inventoryOfMeetingRoom.name);
    }
    return items.join(', ');
  }

  String getAllElectonicDevices() {
    var inventories = getInventories();
    var inventoriesOfElectornic =
        inventories.where((element) => element.type == 'electronic');
    var electronicDevices = [];
    for (var inventoryOfElectronic in inventoriesOfElectornic) {
      electronicDevices.add(inventoryOfElectronic.name);
    }
    return electronicDevices.join(', ');
  }

  String getAllFurnitures() {
    var inventories = getInventories();
    var inventoriesOfFurniture =
        inventories.where((element) => element.type == 'furniture');
    var furnitures = [];
    for (var inventoryOfFurniture in inventoriesOfFurniture) {
      furnitures.add(inventoryOfFurniture.name);
    }
    return furnitures.join(', ');
  }

  String getAllItemsWherePurchasedOn16Jan2020() {
    var inventories = getInventories();
    var inventoriesOf16Jan2020 = inventories.where((element) {
      var epcohToDate =
          DateTime.fromMillisecondsSinceEpoch(element.purchasedAt * 1000);
      var dateTime = DateTime.parse(epcohToDate.toString());
      var formatedDate = '${dateTime.day}-${dateTime.month}-${dateTime.year}';
      return formatedDate.toString() == '16-1-2020';
    });
    var items = [];
    for (var inventoryOf16Jan2020 in inventoriesOf16Jan2020) {
      items.add(inventoryOf16Jan2020.name);
    }
    return items.join(', ');
  }

  String getAllItemsWithBrownColor() {
    var inventories = getInventories();
    var inventoriesOfBrownColor =
        inventories.where((element) => element.tags.contains('brown'));
    var items = [];
    for (var inventoryOfBrownColor in inventoriesOfBrownColor) {
      items.add(inventoryOfBrownColor.name);
    }
    return items.join(', ');
  }
}
