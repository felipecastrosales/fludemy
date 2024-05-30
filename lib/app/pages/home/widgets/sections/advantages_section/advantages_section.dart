import 'package:flutter/material.dart';

import 'package:fludemy/app/core/responsive/breakpoints.dart';
import 'package:fludemy/app/core/theme/tokens/app_colors.dart';
import 'package:fludemy/app/core/values/app_texts.dart';

import 'advantages_section_horizontal.dart';
import 'advantages_section_vertical.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= Breakpoints.mobileBreakpoint) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.graniteGray),
              ),
            ),
            child: const Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 16,
              children: [
                AdvantagesSectionHorizontal(
                  iconData: Icons.connect_without_contact,
                  title: AppTexts.moreThan100kDevelopers,
                  subtitle: AppTexts.awesomeExclamation,
                ),
                AdvantagesSectionHorizontal(
                  iconData: Icons.card_membership,
                  title: AppTexts.certificateOfComplete,
                  subtitle: AppTexts.sensationalExclamation,
                ),
                AdvantagesSectionHorizontal(
                  iconData: Icons.verified,
                  title: AppTexts.sensationalExclamation,
                  subtitle: AppTexts.anywhereExclamation,
                ),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.graniteGray),
            ),
          ),
          child: const Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 32,
            children: [
              AdvantagesSectionVertical(
                iconData: Icons.connect_without_contact,
                title: AppTexts.moreThan100kDevelopers,
                subtitle: AppTexts.awesomeExclamation,
              ),
              AdvantagesSectionVertical(
                iconData: Icons.card_membership,
                title: AppTexts.certificateOfComplete,
                subtitle: AppTexts.sensationalExclamation,
              ),
              AdvantagesSectionVertical(
                iconData: Icons.verified,
                title: AppTexts.sensationalExclamation,
                subtitle: AppTexts.anywhereExclamation,
              ),
            ],
          ),
        );
      },
    );
  }
}
