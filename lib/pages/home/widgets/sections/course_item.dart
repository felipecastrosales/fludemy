import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

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
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return AutoSizeText(
                'Responsiveness in the Flutter | '
                'Mobile, Tablet, Web and Desktop',
                maxLines: 3,
                presetFontSizes: [16, 14, 12],
                overflowReplacement: Text(
                  'Responsiveness',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[100],
                    fontSize: 16,
                    height: 2,
                  ),
                ),
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.grey[100],
                ),
              );
            }
          ),
        ),
        Text(
          'Daniel Ciolfi and Felipe Sales',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: Colors.grey[400],
          ),
        ),
        Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 12,
            color: Colors.grey[100],
          ),
        ),
      ],
    );
  }
}