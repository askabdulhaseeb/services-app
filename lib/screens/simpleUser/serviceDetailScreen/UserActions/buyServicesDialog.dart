import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class BuyServicesDialog extends StatelessWidget {
  final String service = 'Service Title';
  final double amount = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: redShade,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Bye Services',
                style: TextStyle(
                  color: greenShade,
                  fontFamily: englishText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ServiceLineWidget(line: 'Do you want to Buy', title: service),
              ServiceLineWidget(
                  line: 'Service Chareges', title: amount.toString()),
            ],
          ),
          ActionYesOrNoLine(),
        ],
      ),
    );
  }
}

class ActionYesOrNoLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'No',
            style: TextStyle(
              color: redShade,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: () {
            // TODO: add Payment Gateways here
            Navigator.of(context).pop();
          },
          child: Text(
            'Yes',
            style: TextStyle(
              color: greenShade,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class ServiceLineWidget extends StatelessWidget {
  const ServiceLineWidget({
    Key key,
    @required this.line,
    @required this.title,
  }) : super(key: key);
  final String line;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          line,
          style: TextStyle(
            fontFamily: englishText,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          ' $title.',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: greenShade,
            fontFamily: englishText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
