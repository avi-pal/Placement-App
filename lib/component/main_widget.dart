import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:placement/pages/Internship/internship_page.dart';
import 'package:placement/pages/Job/job_page.dart';
import 'package:placement/pages/Vlog/vlog_page.dart';
import 'package:placement/pages/account/account_page.dart';
import 'package:placement/pages/home/home_page.dart';

class MainWidget extends StatefulWidget {
  int _selectedIndex = 0;
  MainWidget(this._selectedIndex);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AccountPage(),
    JobPage(),
    InternshipPage(),
    MyHomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[100],
        title: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "Place",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)),
            TextSpan(
              text: "ment",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      body: _widgetOptions[widget._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_rounded),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_rounded),
            label: 'Internship',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Blog',
          ),
        ],
        currentIndex: widget._selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
