import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';
import 'package:servicesApp/screens/simpleUser/serviceDetailScreen/UserActions/serviceIconContainer.dart';
import 'buyServicesDialog.dart';
import 'commentDialog.dart';

class UserAction extends StatefulWidget {
  @override
  _UserActionState createState() => _UserActionState();
}

class _UserActionState extends State<UserAction> {
  bool _isInterseted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: redShade,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isInterseted = !_isInterseted;
              });
            },
            child: ServiceIconContainer(
              iconData:
                  (_isInterseted) ? Icons.thumb_up : Icons.thumb_up_outlined,
              des: 'Interested',
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CommentDialog(),
                  );
                },
              );
            },
            child: ServiceIconContainer(
              iconData: Icons.messenger_outline_outlined,
              des: 'Comments',
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: BuyServicesDialog(),
                  );
                },
              );
            },
            child: ServiceIconContainer(
              iconData: Icons.monetization_on_outlined,
              des: 'Buy',
            ),
          ),
        ],
      ),
    );
  }
}
