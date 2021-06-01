import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class ServiceIconContainer extends StatelessWidget {
  final IconData iconData;
  final String des;
  const ServiceIconContainer({@required this.iconData, @required this.des});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: greenShade,
        ),
        SizedBox(width: 8),
        Text(
          des,
          style: TextStyle(color: greenShade),
        )
      ],
    );
  }
}
