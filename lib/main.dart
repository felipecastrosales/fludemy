import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUdemy | Courses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0XFF0A0A0A),
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const HomePage(),
    );
  }
}
