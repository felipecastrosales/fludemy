import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/course.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(builder: (_, constraints) {
            return AutoSizeText(
              'Responsiveness in the Flutter | '
              'Mobile, Tablet, Web and Desktop',
              maxLines: 3,
              presetFontSizes: const [16, 14, 12],
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
          }),
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
