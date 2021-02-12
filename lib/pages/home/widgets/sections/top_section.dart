import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';
import 'custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= 1000) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 7 / 2,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 64,
                  left: 50,
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
                            'Create amazing things with a single code.',
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
        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: TopSectionImage(),
                ),
                Positioned(
                  top: 42,
                  left: 36,
                  child: Card(
                    color: Colors.black,
                    elevation: 16,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 360,
                      child: Column(
                        children: [
                          Text(
                            'Learn Flutter with this course',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 28,
                                color: Colors.grey[50],
                                letterSpacing: 1.2,
                                height: 0.9),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Let\'s Learn Flutter! '
                            'Create amazing things with a single code.',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.grey[100],
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
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 7 / 2,
              child: TopSectionImage()
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Learn Flutter with this course',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                      color: Colors.grey[50],
                      letterSpacing: 1.2,
                      height: 0.95
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Let\'s Learn Flutter! '
                    'Create amazing things with a single code.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
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
          ],
        );
      },
    );
  }
}

class TopSectionImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      fit: BoxFit.cover,
    );
  }
}
