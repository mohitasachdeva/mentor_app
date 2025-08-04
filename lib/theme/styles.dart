import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF0D47A1);
  static const Color secondary = Color(0xFF42A5F5);
  static const Color lightBackground = Color(0xFFE3F2FD);

  static Color? appBar;
}

class AppGradients {
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [AppColors.primary, AppColors.secondary],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient activeSession = LinearGradient(
    colors: [Colors.redAccent, Colors.deepOrange],
  );

  static const LinearGradient idleSession = LinearGradient(
    colors: [Colors.green, Colors.teal],
  );
}

class AppTextStyles {
  static const TextStyle header = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 1.2,
  );

  static const TextStyle subHeader = TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );

  static const TextStyle footer = TextStyle(
    color: Colors.white70,
    fontSize: 14,
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}

class AppPaddings {
  static const EdgeInsets screen = EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0);
  static const EdgeInsets card = EdgeInsets.all(32);
  static const EdgeInsets button = EdgeInsets.symmetric(horizontal: 30, vertical: 15);
}