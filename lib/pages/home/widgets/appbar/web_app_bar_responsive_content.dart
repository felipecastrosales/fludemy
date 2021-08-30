import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]!),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.grey[700]),
                        onPressed: () {}
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Search for anything... ',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 320) ...[
                const SizedBox(width: 24),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Learn', 
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[100],
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Flutter', 
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[100],
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
