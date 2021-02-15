import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(IconData iconData, String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: Colors.grey[50], size: 50),
          SizedBox(width: 8),
          Column(
            children: [
              Text(
                title, 
                style: TextStyle(
                  fontSize: 14, 
                  fontWeight: FontWeight.w800, 
                  color: Colors.grey[50],
                  letterSpacing: 1.1,
                  height: 0.25,
                ),
              ),
              Text(
                subtitle, 
                style: TextStyle(
                  fontSize: 12, 
                  fontWeight: FontWeight.w600, 
                  color: Colors.grey[50],
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[700])),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 16,
        children: [
          buildAdvantage(
            Icons.connect_without_contact, '+100.000 developers\n', 'Awesome!'),
          buildAdvantage(
            Icons.card_membership, 'Certificate of Complete\n', 'Sensational!'),
          buildAdvantage(
            Icons.verified, 'Full Access\n', 'Anywhere!'),
        ],
      ),
    );
  }
}
