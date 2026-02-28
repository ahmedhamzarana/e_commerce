import 'package:flutter/material.dart';

class AppColors {
  static const Color bgColor       = Color(0xFF0A0E1A);
  static const Color cardBg        = Color(0xFF131929);
  static const Color border        = Color(0xFF252D42);

  static const Color primary       = Color(0xFFC9A84C);
  static const Color primaryLight  = Color(0xFFE8C96A);
  static const Color primaryDark   = Color(0xFFA8752A);

  static const Color accent        = Color(0xFF4A7BDB);

  static const Color textPrimary   = Color(0xFFF0EBE1);
  static const Color textSecondary = Color(0xFFAFB8CE);
  static const Color textLight     = Color(0xFF5A6480);
  static const Color textOnGold    = Color(0xFF0A0E1A);

  static const Color success       = Color(0xFF3DD68C);
  static const Color danger        = Color(0xFFEF4444);
  static const Color warning       = Color(0xFFF59E0B);

  static const Color priceBudget   = Color(0xFF3DD68C);
  static const Color priceMid      = Color(0xFF4A7BDB);
  static const Color pricePremium  = Color(0xFFC9A84C);
  static const Color priceLuxury   = Color(0xFFFF6B6B);

  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLight, primaryDark],
  );
}