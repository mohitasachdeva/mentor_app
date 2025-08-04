import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class Utils {
  /// Checks whether Bluetooth is supported and enabled
  static Future<bool> checkBluetoothStatus(BuildContext context) async {
    bool isBluetoothOn = await FlutterBluePlus.isOn;

    if (!isBluetoothOn) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (_) => const AlertDialog(
            title: Text("Bluetooth Required"),
            content: Text("Please turn on Bluetooth to use this feature."),
          ),
        );
      }
      return false;
    }

    return true;
  }
}