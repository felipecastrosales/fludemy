import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'package:fludemy/app/fludemy_app.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const FludemyApp(),
    ),
  );
}
