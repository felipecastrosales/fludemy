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
          Image.asset('assets/fu.png', height: 40, width: 40),
          Text(
            'FLUdemy',
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
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>(
                  (states) {
                    return BorderSide(color: Colors.white, width: 1.5);
                  },
                ),
              ),
              child: Text(
                '  Log in  ',
                style: TextStyle(
                  fontWeight: FontWeight.w600, 
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black, 
              ),
              child: Text(
                '  Sign up  ',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
