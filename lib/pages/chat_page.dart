import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatapp/constants.dart';
import 'package:flutter_chatapp/model/message_mode.dart';
import 'package:flutter_chatapp/widget/custom_bubile_chat.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id = 'ChatPage';
  CollectionReference message =
      FirebaseFirestore.instance.collection(kMessagesCollections);

  TextEditingController textkey = TextEditingController();
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: message.orderBy(kCreatedAt, descending: false).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageMode> messageList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messageList.add(MessageMode.fromJson(snapshot.data!.docs[i]));
          }
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kPrimaryColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      kLogo,
                      height: 50,
                    ),
                    Text('chat'),
                  ],
                ),
                centerTitle: true,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: messageList.length,
                      itemBuilder: (context, index) {
                        return messageList[index].id == email
                            ? CustomBubileChat(
                                message: messageList[index],
                              )
                            : ChatBubleForFriend(message: messageList[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: textkey,
                      onSubmitted: (data) {
                        message
                            .add({
                              kMessage: data,
                              kCreatedAt: DateTime.now(),
                              'id': email
                            })
                            .then((value) => print('usear add'))
                            .catchError((error) => print(error));

                        textkey.clear();
                        _controller.animateTo(
                          _controller.position.maxScrollExtent,
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.send,
                            color: kPrimaryColor,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ))),
                    ),
                  )
                ],
              ));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
