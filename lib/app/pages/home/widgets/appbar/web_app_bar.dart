import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      title: Row(
        children: [
          Image.asset(
            'assets/fu.png',
            height: 40,
            width: 40,
          ),
          const Text(
            'FLUdemy',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(width: 24),
          const WebAppBarResponsiveContent(),
          const SizedBox(width: 24),
          IconButton(
            icon: const Icon(Icons.shopping_cart_rounded),
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
                    return const BorderSide(
                      color: Colors.white,
                      width: 1.5,
                    );
                  },
                ),
              ),
              child: const Text(
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
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              child: const Text(
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
