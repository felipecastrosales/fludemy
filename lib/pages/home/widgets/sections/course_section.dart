import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';
import 'course_item.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
