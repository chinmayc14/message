import 'package:flutter/material.dart';
import 'package:message/pages/ConversationPageList.dart';

void main() => runApp(Message());

class Message extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConversationPageList(),
    );
  }
}
