import 'package:flutter/material.dart';

import 'package:fludemy/breakpoints.dart';

import 'widgets/appbar/mobile_app_bar.dart';
import 'widgets/appbar/web_app_bar.dart';
import 'widgets/sections/advantages_section.dart';
import 'widgets/sections/course_section.dart';
import 'widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < Breakpoints.mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 80),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < Breakpoints.mobileBreakpoint
              ? const Drawer()
              : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1200,
              ),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CourseSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
