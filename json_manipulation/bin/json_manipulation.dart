// import 'dart:io';

import 'dart:io';

import 'package:json_manipulation/services/inventory_service.dart';

// NOTE:
// DI SOAL JSON MANIPULATION DISEDIAKAN 5 SOAL,
// SILAHKAN CODE DI BAWAH DI UNCOMMENT SESUAI DENGAN SOAL YANG MAU DI RUNNIN
// SETELAH DI UNCOMMENT, SILAHKAN KLIK TOMBOL RUN ATAU TEKAN F5 DI FILE INI UNTUK MENJALANKAN DEBUGGING

void main() {
  stdout.write('1. Find items in the Meeting Room: ');
  print(InventoryService().getItemsInTheMeetingRoom());

  // stdout.write('2. Find all electronic devices: ');
  // print(InventoryService().getAllElectonicDevices());

  // stdout.write('3. Find all the furniture: ');
  // print(InventoryService().getAllFurnitures());

  // stdout.write('4. Find all items were purchased on 16 Januari 2020: ');
  // print(InventoryService().getAllItemsWherePurchasedOn16Jan2020());

  // stdout.write('5. Find all items with brown color: ');
  // print(InventoryService().getAllItemsWithBrownColor());
}
