import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobs_app/theme.dart';
import 'package:jobs_app/widgets/list_requirement.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget applyButton() {
    return Center(
      child: Container(
        height: 45,
        width: 200,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff4141A4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Apply for Job',
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }

  Widget cancelButton() {
    return Center(
      child: Container(
        height: 45,
        width: 200,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffFD4F56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Cancel Apply',
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }

  Widget succesAppliedMessages() {
    return Container(
      padding: EdgeInsets.fromLTRB(39, 9, 39, 9),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xffECEDF1),
        borderRadius: BorderRadius.all(
          Radius.circular(49),
        ),
      ),
      child: Text(
        'You have applied this job and the \nrecruiter will contact you',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Color(0xffA2A6B4),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              isApplied ? succesAppliedMessages() : SizedBox(),
              Image.asset(
                'assets/logo_google.png',
                height: 60,
                width: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Front-End Developer',
                style: jobapplyTextStyle,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: subtitlelistTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the job',
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListRequirement(
                      text: 'Full-Time Remote, Work Anywhere',
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListRequirement(
                      text: 'Start at \$18,000 per month',
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Qualifications',
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListRequirement(
                      text:
                          "Candidate must possess at least a \nBachelor's Degree.",
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListRequirement(
                      text:
                          "Able to use Microsoft Office and Google \nbased service.",
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListRequirement(
                      text:
                          "Have an excellent time management, \ngood at organized and details",
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Responsibilities',
                      style: titleRequirementTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListRequirement(
                      text:
                          "Initiate and promote any programs, events, \ntraining, or activities.",
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListRequirement(
                      text:
                          "Assessing and anticipating needs and \ncollaborate with Division.",
                      imageUrl: 'assets/dot.png',
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    isApplied ? cancelButton() : applyButton(),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 35,
                        ),
                        child: Text(
                          'Message Recruiter',
                          style: subbuttonTextStyle,
                        ),
                      ),
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
