import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/fu.png', height: 50, width: 50),
      centerTitle: true,
      backgroundColor: Colors.black,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: () {}),
      ],
    );
  }
}
