import 'package:flutter_chatapp/constants.dart';

class MessageMode {
  final String massage;
  final String id;

  MessageMode(this.massage, this.id);

  factory MessageMode.fromJson(json) {
    return MessageMode(json[kMessage], json['id']);
  }
}
