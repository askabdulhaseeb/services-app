import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:servicesApp/screens/adminPanal/AdminAddNewServicesScreen/adminAddNewServicesScreen.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/adminPanal/adminNotificationScreen.dart/adminNotificationScreen.dart';
import 'package:servicesApp/screens/adminPanal/adminServicesScreen/adminServicesScreen.dart';

class AdminHomeScreen extends StatefulWidget {
  static final routeName = '/AdminHomeScreen';
  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  int _currentIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    AdminServicesScreen(),
    AdminAddNewServicesScreen(),
    AdminNotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Services'),
            activeColor: redShade,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text(
              'Add Service',
              style: TextStyle(fontSize: 12),
            ),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications_active),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 12),
            ),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
