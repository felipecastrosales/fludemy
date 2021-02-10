import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      title: Row(
        children: [
          FlutterLogo(size: 40),
          Text(
            'Fluttermy',
            style: TextStyle(fontWeight: FontWeight.w800), 
          ),
          const SizedBox(width: 24),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 24),
          IconButton(
            icon: Icon(Icons.shopping_cart_rounded), 
            onPressed: () {},
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: 38,
            child: OutlineButton(
              onPressed: () {},
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.white, width: 1.5),
              child: Text(
                '  Fazer login  ',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: 40,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.black,
              child: Text(
                '  Cadastre-se  ',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
