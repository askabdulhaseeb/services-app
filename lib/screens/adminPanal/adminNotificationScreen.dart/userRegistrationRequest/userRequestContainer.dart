import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/notificationScreen/circularNotificationImageContainer.dart';

class UserRequestContainer extends StatelessWidget {
  final String imageUrl;
  final String userID;
  final String time;
  const UserRequestContainer({
    @required this.imageUrl,
    @required this.userID,
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
            RequestedUserInfoWidget(userID: userID, time: time),
          ],
        ),
      ),
    );
  }
}

class RequestedUserInfoWidget extends StatelessWidget {
  final String userID;
  final String time;

  const RequestedUserInfoWidget({@required this.userID, @required this.time});
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
              (userID == null) ? 'Not found' : '$userID send request',
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              maxLines: 1,
              style: TextStyle(
                fontSize: 14,
                fontFamily: englishText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: redShade,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Reject'),
                ),
              ),
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: greenShade,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Accept'),
                ),
              ),
            ],
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
