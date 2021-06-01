import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'circularNotificationImageContainer.dart';

class NotificationContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String substring;
  final String time;
  const NotificationContainer({
    @required this.imageUrl,
    @required this.title,
    @required this.substring,
    @required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: double.infinity,
        height: 90,
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircularNotificationImageContainer(
              imageUrl: imageUrl,
            ),
            SizedBox(width: 8),
            NotificationColumnTextWidget(
              title: title,
              substring: substring,
              time: time,
            ),
            // Text(time),
          ],
        ),
      ),
    );
  }
}

class NotificationColumnTextWidget extends StatelessWidget {
  const NotificationColumnTextWidget({
    Key key,
    @required this.title,
    @required this.substring,
    @required this.time,
  }) : super(key: key);

  final String title;
  final String substring;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width - 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              (title == null) ? 'Not found' : '$title',
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                fontFamily: englishText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              (substring == null) ? 'Not fount' : "$substring",
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 2,
              style: TextStyle(
                fontSize: 12,
                fontFamily: englishText,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                (time == null) ? 'Not found' : '$time',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: englishText,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
