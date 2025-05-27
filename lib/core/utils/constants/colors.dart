import 'package:flutter/painting.dart';

abstract class AppColors {
  AppColors._();
  
  // Primary Colors (Same for both themes)
  static const primary = Color(0xFF2563EB);
  static const primaryLight = Color(0xFF60A5FA);
  static const primaryDark = Color(0xFF1E40AF);
  
  // Secondary Colors (Same for both themes)
  static const secondary = Color(0xFF64748B);
  static const secondaryLight = Color(0xFF94A3B8);
  static const secondaryDark = Color(0xFF475569);
  
  // Status Colors (Same for both themes)
  static const success = Color(0xFF22C55E);
  static const error = Color(0xFFEF4444);
  static const warning = Color(0xFFF59E0B);
  static const info = Color(0xFF3B82F6);

  // Light Theme Colors
  static const lightBackground = Color(0xFFF8FAFC);
  static const lightSurface = Color(0xFFFFFFFF);
  static const lightCard = Color(0xFFFFFFFF);
  static const lightTextPrimary = Color(0xFF1E293B);
  static const lightTextSecondary = Color(0xFF64748B);
  static const lightTextHint = Color(0xFF94A3B8);
  static const lightBorder = Color(0xFFE2E8F0);
  static const lightDivider = Color(0xFFE2E8F0);
  static const lightHover = Color(0xFFF1F5F9);
  static const lightActive = Color(0xFFE2E8F0);
  static const lightScaffoldBackground = Color(0xFFF8FAFC);
  static const lightAppBarBackground = Color(0xFFFFFFFF);
  static const lightDrawerBackground = Color(0xFFFFFFFF);
  static const lightCardShadow = Color(0x1A000000);

  // Dark Theme Colors
  static const darkBackground = Color(0xFF0F172A);
  static const darkSurface = Color(0xFF1E293B);
  static const darkCard = Color(0xFF1E293B);
  static const darkTextPrimary = Color(0xFFF8FAFC);
  static const darkTextSecondary = Color(0xFFCBD5E1);
  static const darkTextHint = Color(0xFF94A3B8);
  static const darkBorder = Color(0xFF334155);
  static const darkDivider = Color(0xFF334155);
  static const darkHover = Color(0xFF1E293B);
  static const darkActive = Color(0xFF334155);
  static const darkScaffoldBackground = Color(0xFF0F172A);
  static const darkAppBarBackground = Color(0xFF1E293B);
  static const darkDrawerBackground = Color(0xFF1E293B);
  static const darkCardShadow = Color(0x1AFFFFFF);

  // Common UI Element Colors
  static const overlay = Color(0x80000000);
  static const disabled = Color(0xFF94A3B8);
  static const selected = Color(0xFF2563EB);
  static const ripple = Color(0x1A000000);
}