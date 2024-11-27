import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final IconData? icon;
  final bool hasIcon;
  final Color textColor;
  final Color background;
  const AppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.icon,
    this.hasIcon = true,
    required this.textColor,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        backgroundColor: background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: onTap,
      icon: hasIcon ? Icon(icon, color: textColor) : null,
      label: Text(
        title,
        style: TextStyle(fontSize: 16.0, color: textColor),
      ),
    );
  }
}
