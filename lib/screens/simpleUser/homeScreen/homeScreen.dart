import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/loginScreen/loginScreen.dart';
import 'package:servicesApp/screens/simpleUser/newServicesScreen/newServicesScreen.dart';
import 'package:servicesApp/screens/simpleUser/notificationScreen/notificationScreen.dart';
import 'package:servicesApp/screens/simpleUser/profileScreen/profileScreen.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = '/HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    NewServicesScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: appName,
        actions: [
          IconButton(
              icon: Icon(
                Icons.logout,
                color: redShade,
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName, (route) => false);
              })
        ],
      ),
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
            icon: Icon(Icons.notifications_active),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 12),
            ),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
            activeColor: greenShade,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
