import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_ble_peripheral/flutter_ble_peripheral.dart';

class BluetoothService {
  static final FlutterBlePeripheral _blePeripheral = FlutterBlePeripheral();

  // ✅ Proper 128-bit UUID for service
  static const String fixedUuid = '1ce244b3-c395-4b8d-8c1f-27e4129bd6cd';

  // ✅ Manufacturer ID (0xFFFF is often used for testing, or use 0x1234)
  static const int manufacturerId = 0x1234;

  // ✅ Manufacturer Data as UTF-8 bytes (e.g., "M1-mentor")
  static const String manufacturerString = 'M1-mentor';

  static Future<void> startAdvertising() async {
    try {
      final advertiseData = AdvertiseData(
        includeDeviceName: true,
        serviceUuid: fixedUuid,
        manufacturerId: manufacturerId,
        manufacturerData: Uint8List.fromList(utf8.encode(manufacturerString)),
      );

      debugPrint('🟢 Starting BLE Advertising...');
      debugPrint('🔹 UUID: $fixedUuid');
      debugPrint('🔹 Manufacturer ID: $manufacturerId');
      debugPrint('🔹 Manufacturer Data: $manufacturerString');

      await _blePeripheral.start(advertiseData: advertiseData);

      debugPrint('✅ Advertising started successfully');
    } catch (e) {
      debugPrint('❌ Failed to start advertising: $e');
    }
  }

  static Future<void> stopAdvertising() async {
    try {
      debugPrint('🔴 Stopping BLE Advertising...');
      await _blePeripheral.stop();
      debugPrint('✅ Advertising stopped');
    } catch (e) {
      debugPrint('❌ Failed to stop advertising: $e');
    }
  }

  static Future<bool> isAdvertising() async {
    try {
      final advertising = await _blePeripheral.isAdvertising;
      debugPrint('ℹ️ Currently advertising: $advertising');
      return advertising;
    } catch (e) {
      debugPrint('❌ Error checking advertising state: $e');
      return false;
    }
  }
}