import 'package:flutter/material.dart';

import 'custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= 1100) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 64,
                  child: Card(
                    color: Colors.black,
                    elevation: 16,
                    child: Container(
                      padding: EdgeInsets.all(24),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            'Learn Flutter with this course',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 32,
                              color: Colors.grey[50],
                              letterSpacing: 1.25,
                              height: 0.85
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Let\'s Learn Flutter! ' 
                            'Create amazing things with a single code',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: Colors.grey[100],
                              letterSpacing: 1.1,
                            ),
                          ),
                          const SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
