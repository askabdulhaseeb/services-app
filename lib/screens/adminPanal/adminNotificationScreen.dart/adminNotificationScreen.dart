import 'package:flutter/material.dart';
import 'package:servicesApp/screens/adminPanal/adminNotificationScreen.dart/adminNotifications/adminNotification.dart';
import 'package:servicesApp/screens/adminPanal/adminNotificationScreen.dart/userRegistrationRequest/userRegistrationRequest.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/loginScreen/loginScreen.dart';

class AdminNotificationScreen extends StatefulWidget {
  static final routeName = '/AdminNotificationScreen';

  @override
  _AdminNotificationScreenState createState() =>
      _AdminNotificationScreenState();
}

class _AdminNotificationScreenState extends State<AdminNotificationScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Notifications'),
    Tab(text: 'Requests'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return (tab.text == 'Notifications')
              ? AdminNotifications()
              : UserRegistrationRequest();
        }).toList(),
      ),
    );
  }
}
