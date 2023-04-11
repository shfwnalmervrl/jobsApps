import 'package:flutter/material.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/job_card.dart';
import 'package:jobs_app/widgets/list_job.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: titleTextStyle,
                  ),
                  Text(
                    'shfwnalmer_vrl',
                    style: subtitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/sun_moon.png',
                height: 58,
                width: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: homeTextStyle,
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/card_category2.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'App Designer',
                      imageUrl: 'assets/card_category3.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Content Writer',
                      imageUrl: 'assets/card_category4.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Video Grapher',
                      imageUrl: 'assets/card_category5.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Just Posted',
                style: homeTextStyle,
              ),
              SizedBox(
                height: 26,
              ),
              listJob(
                logoCompany: 'assets/logo_google.png',
                textJob: 'Front-End Developer',
                textCompany: 'Google',
              ),
              SizedBox(
                height: 16,
              ),
              listJob(
                logoCompany: 'assets/logo_instagram.png',
                textJob: 'UI Designer',
                textCompany: 'Instagram',
              ),
              SizedBox(
                height: 16,
              ),
              listJob(
                logoCompany: 'assets/logo_facebook.png',
                textJob: 'Data Scientist',
                textCompany: 'Facebook',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_1.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_2.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_3.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/navbar_4.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 30,
            ),
            body(),
          ],
        ),
      ),
    );
  }
}
