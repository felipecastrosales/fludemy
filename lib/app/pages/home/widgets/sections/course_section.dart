import 'package:flutter/material.dart';

import 'package:fludemy/app/core/responsive/breakpoints.dart';

import 'course_item.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: maxWidth >= Breakpoints.tabletMedium ? 0 : 16,
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
