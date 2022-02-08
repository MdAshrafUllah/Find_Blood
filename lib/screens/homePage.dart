import 'package:flutter/material.dart';

import 'MessagePage.dart';
import 'NotificationPage.dart';
import 'ProfileHomePage.dart';
import 'ProfilePage.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int index = 0;
  final screens = [
    ProfileHomePage(),
    NotificationPage(),
    MessagePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEA3B4A),
        automaticallyImplyLeading: false,
        title: Text('Find Blood'),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xFFEA3B4A).withOpacity(0.3),
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 12, fontWeight: FontWeight.w400,)
            )
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFEA3B4A).withOpacity(0.15),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.view_agenda_outlined,color: Color(0xFFEA3B4A),),selectedIcon: Icon(Icons.view_agenda,color: Color(0xFFEA3B4A),), label: 'Home',),
            NavigationDestination(
              icon: Icon(Icons.add_alert_outlined,color: Color(0xFFEA3B4A),),selectedIcon: Icon(Icons.add_alert_rounded,color: Color(0xFFEA3B4A),), label: 'Notification',),
            NavigationDestination(
              icon: Icon(Icons.email_outlined,color: Color(0xFFEA3B4A),),selectedIcon: Icon(Icons.email,color: Color(0xFFEA3B4A),), label: 'Message',),
            NavigationDestination(
              icon: Icon(Icons.account_box_outlined,color: Color(0xFFEA3B4A),),selectedIcon: Icon(Icons.account_box_rounded,color: Color(0xFFEA3B4A),), label: 'Profile',),

          ],
        ),
      ),
    );
  }
}
