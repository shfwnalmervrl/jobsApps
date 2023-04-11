import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/list_job.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;

  SecondHomePage({required this.imageUrl, required this.jobTitle});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      height: 270,
                      width: double.infinity,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 178,
                      left: 24,
                    ),
                    child: Text(
                      jobTitle,
                      style: titlesecondhomeTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 216,
                      left: 24,
                    ),
                    child: Text(
                      '12,309 available',
                      style: subtitlesecondhomeTextStyle,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                      style: homeTextStyle,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Column(
                      children: [
                        listJob(
                          logoCompany: 'assets/logo_google.png',
                          textJob: 'Front-End Developer',
                          textCompany: 'Google',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        listJob(
                          logoCompany: 'assets/logo_instagram.png',
                          textJob: 'UI Designer',
                          textCompany: 'Instagram',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        listJob(
                          logoCompany: 'assets/logo_facebook.png',
                          textJob: 'Data Scientist',
                          textCompany: 'Facebook',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30.5,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                      style: homeTextStyle,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Column(
                      children: [
                        listJob(
                            logoCompany: 'assets/logo_instagram.png',
                            textJob: 'UI Designer',
                            textCompany: 'Instagram'),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        listJob(
                            logoCompany: 'assets/logo_facebook.png',
                            textJob: 'Data Scientist',
                            textCompany: 'Facebook'),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        listJob(
                            logoCompany: 'assets/logo_google.png',
                            textJob: 'Front-End Developer',
                            textCompany: 'Google'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
