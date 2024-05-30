import 'package:flutter/material.dart';

import 'package:fludemy/app/core/responsive/breakpoints.dart';
import 'package:fludemy/app/core/theme/tokens/app_colors.dart';
import 'package:fludemy/app/core/values/app_texts.dart';
import 'package:fludemy/app/pages/home/widgets/sections/custom_search_field.dart';
import 'package:fludemy/app/pages/home/widgets/sections/top_section_image.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= Breakpoints.tabletMedium) {
          return AspectRatio(
            aspectRatio: 7 / 2,
            child: Stack(
              children: [
                const AspectRatio(
                  aspectRatio: 7 / 2,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 56,
                  left: 50,
                  child: Card(
                    color: AppColors.black87,
                    elevation: 16,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: 450,
                      child: const Column(
                        children: [
                          Text(
                            AppTexts.letsLearnFlutterWithTheseCourses,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 32,
                              color: AppColors.lotion,
                              letterSpacing: 1.25,
                              height: 0.85,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            AppTexts.theFlutterIsAmazing,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: AppColors.cultured,
                              letterSpacing: 1.1,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (maxWidth >= Breakpoints.mobileBreakpoint) {
          return SizedBox(
            height: 300,
            child: Stack(
              children: [
                const SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 32,
                  left: 32,
                  child: Card(
                    color: AppColors.black87,
                    elevation: 16,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 360,
                      child: const Column(
                        children: [
                          Text(
                            AppTexts.letsLearnFlutterWithTheseCourses,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 28,
                              color: AppColors.lotion,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            AppTexts.theFlutterIsAmazing,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: AppColors.cultured,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return const Column(
          children: [
            AspectRatio(
              aspectRatio: 10 / 3,
              child: TopSectionImage(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    AppTexts.letsLearnFlutterWithTheseCourses,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      color: AppColors.lotion,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    AppTexts.theFlutterIsAmazing,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.cultured,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSearchField(),
            ),
          ],
        );
      },
    );
  }
}
