import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: constraints.maxWidth >= 600 
              ? Colors.red 
              : Colors.blue,
          ),
        );
      },
    );
  }
}
