import 'package:flutter/material.dart';
import 'package:jobs_app/pages/second_homepage.dart';
import 'package:jobs_app/theme.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  JobCard({required this.text, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondHomePage(
              imageUrl: imageUrl,
              jobTitle: text,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 150,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 16,
              right: 41,
            ),
            child: Text(
              text,
              style: pictureTextStyle,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
