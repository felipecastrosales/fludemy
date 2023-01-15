import 'package:flutter/material.dart';

import 'package:fludemy/app/core/responsive/breakpoints.dart';
import 'package:fludemy/app/core/theme/tokens/app_colors.dart';
import 'package:fludemy/app/core/values/app_texts.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Refactor this code - in widget
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

    // TODO: Refactor this code - in widget
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
                AppTexts.moreThan100kDevelopers,
                AppTexts.awesomeExclamation,
              ),
              buildHorizontalAdvantage(
                Icons.card_membership,
                AppTexts.certificateOfComplete,
                AppTexts.sensationalExclamation,
              ),
              buildHorizontalAdvantage(
                Icons.verified,
                AppTexts.sensationalExclamation,
                AppTexts.anywhereExclamation,
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
              AppTexts.moreThan100kDevelopers,
              AppTexts.awesomeExclamation,
            ),
            buildVerticalAdvantage(
              Icons.card_membership,
              AppTexts.certificateOfComplete,
              AppTexts.sensationalExclamation,
            ),
            buildVerticalAdvantage(
              Icons.verified,
              AppTexts.sensationalExclamation,
              AppTexts.anywhereExclamation,
            ),
          ],
        ),
      );
    });
  }
}
