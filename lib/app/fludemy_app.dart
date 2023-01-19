import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'package:fludemy/app/core/theme/app_themes.dart';
import 'package:fludemy/app/core/values/app_texts.dart';
import 'package:fludemy/app/pages/home/home_page.dart';

class FludemyApp extends StatelessWidget {
  const FludemyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.app,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.primary,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const HomePage(),
    );
  }
}
