import 'package:flutter/material.dart';
import 'profileInfoWidget.dart';

class ProfileScreen extends StatelessWidget {
  final String name = 'Default User Name';
  final String userID = 'UserUniqueID';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ProfileInfoWidget(name: name, userID: userID),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
