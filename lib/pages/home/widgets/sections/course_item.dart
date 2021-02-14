import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://img-a.udemycdn.com/course/240x135/3798106_fea1.jpg?9WEnb7sEOnp2JpUAA2FUKCH-lk4ciVnoL7zt-3Ytz8z5IPx_06sfOF2-qJrr7vFbrIHi97_5mVka2tQS1i4DUaNzSGxxwd6HOMJYGpeyYANIG-uPgQHIG4kfflNLbw',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Text(
          'Responsiveness in the Flutter | Mobile, Tablet, Web and Desktop',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: Colors.grey[100],
          ),
        ),
        Text(
          'Daniel Ciolfi and Felipe Sales',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.grey[500],
          ),
        ),
        Text(
          '\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }
}