import 'package:flutter/material.dart';
import 'package:flutter_chatapp/constants.dart';
import 'package:flutter_chatapp/model/message_mode.dart';

class CustomBubileChat extends StatelessWidget {
  const CustomBubileChat({super.key, required this.message});
  final MessageMode message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        child: Text(message.massage),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageMode message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 32),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: Color(0xff006D84),
        ),
        child: Text(
          message.massage,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
