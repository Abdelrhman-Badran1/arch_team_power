import 'dart:ui';

class SettingsItemModel {
  final String title;
  final String iconPath; // SVG or PNG asset
  final bool isLogout;
  final VoidCallback? onTap;

  SettingsItemModel({
    required this.title,
    required this.iconPath,
    this.isLogout = false,
    this.onTap,
  });
}
