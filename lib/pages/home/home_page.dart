import 'package:flutter/material.dart';

import '../../breakpoints.dart';
import 'widgets/appbar/mobile_app_bar.dart';
import 'widgets/appbar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint 
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56))
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 80)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
        );
      },
    );
  }
}
