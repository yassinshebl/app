import 'package:flutter/material.dart';
import 'app_styles.dart';

class SnackBarUtils {
  static void showSnackbar(
      BuildContext context, IconData icon, String message) {
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              icon,
              color: AppTheme.accent,
            ),
            const SizedBox(width: 8),
            Text(message),
          ],
        ),
      ),
    );
  }
}
