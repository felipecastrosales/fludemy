import 'package:flutter/material.dart';

import 'package:fludemy/app/core/theme/tokens/app_colors.dart';

class AdvantagesSectionHorizontal extends StatelessWidget {
  const AdvantagesSectionHorizontal({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  });

  final IconData iconData;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: AppColors.lotion,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.lotion,
                letterSpacing: 1.1,
              ),
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.lotion,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
