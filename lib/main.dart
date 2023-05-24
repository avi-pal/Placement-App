import 'package:flutter/material.dart';
import 'package:placement/component/main_widget.dart';
import 'package:placement/pages/Job/job_page.dart';
import 'package:placement/pages/account/account_page.dart';
import 'package:placement/pages/home/home_page.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Placement(),
    );
  }
}

class Placement extends StatelessWidget {
  const Placement({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainWidget(0)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      color: Color.fromARGB(255, 10, 38, 71),
      height: double.infinity,
      width: double.infinity,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Place",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Color.fromARGB(255, 255, 255, 255),
                decoration: TextDecoration.none),
          ),
          Text(
            "ment",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 45,
                color: Color.fromARGB(255, 255, 255, 255),
                decoration: TextDecoration.none),
          )
        ],
      )),
    ));
    ;
  }
}
