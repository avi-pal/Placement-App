import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InternshipView extends StatefulWidget {
  const InternshipView({super.key});

  @override
  State<InternshipView> createState() => _InternshipViewState();
}

class _InternshipViewState extends State<InternshipView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            JobPostAndCompanyLogo(),
                            CompanyName()
                          ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Platform(),
                    SizedBox(
                      height: 15,
                    ),
                    StartingTimeAndDuration(),
                    SizedBox(
                      height: 15,
                    ),
                    Salary(),
                    SizedBox(
                      height: 30,
                    ),
                    JobType(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      DateOfJobPostIcon(),
                      DateOfJobPost(),
                      
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    ApplyButton()
                  ],
                ),
              ),
            ),
          );
  }
}
class ApplyButton extends StatefulWidget {
  const ApplyButton({super.key});

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 30,
                        width: double.infinity,
                        color: Colors.blue,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Apply Now"),
                        ));
  }
}
class DateOfJobPost extends StatefulWidget {
  const DateOfJobPost({super.key});

  @override
  State<DateOfJobPost> createState() => _DateOfJobPostState();
}

class _DateOfJobPostState extends State<DateOfJobPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 25,
                        padding: EdgeInsets.all(3),
                        color: Color.fromARGB(255, 203, 249, 205),
                        child: Text(
                          "3 days ago",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 255, 8)),
                        ),
                      );
  }
}
class DateOfJobPostIcon extends StatelessWidget {
  const DateOfJobPostIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 25,
                        padding: EdgeInsets.all(3),
                        color: Color.fromARGB(255, 203, 249, 205),
                        child: Icon(
                          Icons.update,
                          size: 18,
                          color: Color.fromARGB(255, 0, 255, 8),
                        ),
                      );
  }
}

class JobType extends StatelessWidget {
  const JobType({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            color: Colors.grey,
                            child: Text(
                              "Internship",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]);
  }
}

class Salary extends StatelessWidget {
  const Salary({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.payments_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "10,000 /month",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
  }
}

class StartingTimeAndDuration extends StatefulWidget {
  const StartingTimeAndDuration({super.key});

  @override
  State<StartingTimeAndDuration> createState() => _StartingTimeAndDurationState();
}

class _StartingTimeAndDurationState extends State<StartingTimeAndDuration> {
  @override
  Widget build(BuildContext context) {
    return                     SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_circle_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Start Immediately",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "6 months",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
  }
}

class Platform extends StatefulWidget {
  const Platform({super.key});

  @override
  State<Platform> createState() => _PlatformState();
}

class _PlatformState extends State<Platform> {
  @override
  Widget build(BuildContext context) {
    return                     SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 22,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Work From Home",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
  }
}

class CompanyName extends StatelessWidget {
  const CompanyName({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                              child: Text(
                                "IBM",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            );
  }
}

class JobPostAndCompanyLogo extends StatelessWidget {
  const JobPostAndCompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Flutter Development",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Container(
                                  //   height: 100,
                                  //   width: 100,
                                  //   child: Image(
                                  //       // image:
                                  //       //     AssetImage("images/QUIZKIT.jpg")),
                                  // ),
                                ]);
  }
}