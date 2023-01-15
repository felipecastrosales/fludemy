import 'package:flutter/material.dart';

import 'package:fludemy/app/core/responsive/breakpoints.dart';
import 'package:fludemy/app/core/theme/tokens/app_colors.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(
      IconData iconData,
      String title,
      String subtitle,
    ) {
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

    Widget buildVerticalAdvantage(
      IconData iconData,
      String title,
      String subtitle,
    ) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: AppColors.lotion,
            size: 50,
          ),
          const SizedBox(height: 8),
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
      );
    }

    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= Breakpoints.mobileBreakpoint) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.graniteGray),
            ),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 16,
            children: [
              buildHorizontalAdvantage(
                Icons.connect_without_contact,
                '+100.000 developers',
                'Awesome!',
              ),
              buildHorizontalAdvantage(
                Icons.card_membership,
                'Certificate of Complete',
                'Sensational!',
              ),
              buildHorizontalAdvantage(
                Icons.verified,
                'Full Access',
                'Anywhere!',
              ),
            ],
          ),
        );
      }
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.graniteGray),
          ),
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 16,
          spacing: 32,
          children: [
            buildVerticalAdvantage(
              Icons.connect_without_contact,
              '+100.000 developers',
              'Awesome!',
            ),
            buildVerticalAdvantage(
              Icons.card_membership,
              'Certificate of Complete',
              'Sensational!',
            ),
            buildVerticalAdvantage(
              Icons.verified,
              'Full Access',
              'Anywhere!',
            ),
          ],
        ),
      );
    });
  }
}
