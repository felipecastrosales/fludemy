import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: FlutterLogo(),
      centerTitle: true,
      backgroundColor: Colors.black,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: () {}),
      ],
    );
  }
}
