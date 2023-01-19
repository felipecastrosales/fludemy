import 'package:flutter/material.dart';

import 'package:fludemy/app/core/theme/tokens/app_colors.dart';
import 'package:fludemy/app/core/values/app_assets.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppAssets.logo,
        height: 50,
        width: 50,
      ),
      centerTitle: true,
      backgroundColor: AppColors.black87,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}
