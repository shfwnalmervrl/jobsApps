import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';

class ListRequirement extends StatelessWidget {
  final String text;
  final String imageUrl;

  ListRequirement({required this.text, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              imageUrl,
              height: 12,
              width: 12,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: requirementTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
