import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Background
  static const Color background = Color(0xFF000000);
  static const Color backgroundDark = Color(0xFF0A0A0A);

  // Neon Teal / Cyan Glow
  static const Color neonTeal = Color(0xFF00F0FF);
  static const Color neonCyan = Color(0xFF00F0FF);

  // Gradients
  static const LinearGradient glowGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF00F0FF),
      Color(0xFF006EFF),
    ],
  );

  // Primary Text
  static const Color textPrimary = Color(0xFFFFFFFF);

  // Secondary Text
  static const Color textSecondary = Color(0xFFC0C0C0);

  // Button / Card Background
  static const Color buttonBackground = Color(0xFF11181A);
  static const Color cardBackground = Color(0xFF11181A);

  // Decline / Negative Action
  static const Color red = Color(0xFFFF3B30);

  // Active / Positive Pin
  static const Color green = Color(0xFF00FF9D);

  // Button Color (from design)
  static const Color buttonCyan = Color(0xFF5CE1E6);
}
