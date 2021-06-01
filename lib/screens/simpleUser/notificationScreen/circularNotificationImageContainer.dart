import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class CircularNotificationImageContainer extends StatelessWidget {
  final String imageUrl;
  CircularNotificationImageContainer({@required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: (imageUrl == null)
          ? NetworkImage(defaultUser)
          : NetworkImage(imageUrl),
    );
  }
}
