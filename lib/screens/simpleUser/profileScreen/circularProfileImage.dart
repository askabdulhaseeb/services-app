import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class CircularProfileImage extends StatelessWidget {
  final String imageUrl = null;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: (imageUrl == null)
          ? NetworkImage(defaultUser)
          : NetworkImage(imageUrl),
    );
  }
}
