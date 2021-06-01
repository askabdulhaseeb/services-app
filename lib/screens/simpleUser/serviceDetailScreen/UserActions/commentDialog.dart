import 'package:flutter/material.dart';
import 'package:servicesApp/screens/appConstraints.dart';

class CommentDialog extends StatefulWidget {
  @override
  _CommentDialogState createState() => _CommentDialogState();
}

class _CommentDialogState extends State<CommentDialog> {
  String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: redShade,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: TextField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.multiline,
        minLines: 1, //Normal textInputField will be displayed
        maxLines: null,
        onChanged: (value) {
          setState(() {
            comment = value;
          });
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Write your Comment here',
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.3))),
      ),
    );
  }
}
