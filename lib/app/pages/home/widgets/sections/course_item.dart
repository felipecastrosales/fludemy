import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:fludemy/app/core/values/app_assets.dart';
import 'package:fludemy/app/core/values/app_texts.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppAssets.course,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(builder: (_, constraints) {
            return AutoSizeText(
              AppTexts.responsivenessInTheFlutterPlatforms,
              maxLines: 3,
              presetFontSizes: const [16, 14, 12],
              overflowReplacement: Text(
                AppTexts.responsiveness,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.grey[100],
                  fontSize: 16,
                  height: 2,
                ),
              ),
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16,
                color: Colors.grey[100],
              ),
            );
          }),
        ),
        Text(
          AppTexts.danielCiolfiAndFelipeSales,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: Colors.grey[400],
          ),
        ),
        Text(
          AppTexts.price22dot90,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 12,
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }
}
