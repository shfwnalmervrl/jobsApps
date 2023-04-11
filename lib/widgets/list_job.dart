import 'package:flutter/material.dart';
import 'package:jobs_app/pages/detail_page.dart';
import 'package:jobs_app/theme.dart';

class listJob extends StatelessWidget {
  final String logoCompany;
  final String textJob;
  final String textCompany;

  listJob({
    required this.logoCompany,
    required this.textJob,
    required this.textCompany,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            logoCompany,
            height: 45,
            width: 45,
          ),
          SizedBox(
            width: 26,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textJob,
                  style: titlelistTextStyle,
                ),
                Text(
                  textCompany,
                  style: subtitlelistTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
