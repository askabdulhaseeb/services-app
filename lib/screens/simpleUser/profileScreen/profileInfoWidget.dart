import 'package:flutter/material.dart';

import 'circularProfileImage.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    Key key,
    @required this.name,
    @required this.userID,
  }) : super(key: key);

  final String name;
  final String userID;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularProfileImage(),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              userID,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
