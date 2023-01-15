import 'package:fludemy/app/core/values/app_texts.dart';
import 'package:flutter/material.dart';

import 'package:fludemy/app/core/theme/tokens/app_colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.blue,
      style: const TextStyle(color: AppColors.lotion),
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.lotion,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lotion),
        ),
        hintStyle: const TextStyle(color: AppColors.lotion),
        hintText: AppTexts.typeSomeSearchHere,
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          color: AppColors.lotion,
          onPressed: () {},
        ),
      ),
    );
  }
}
