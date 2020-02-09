import 'package:flutter/material.dart';
import 'package:message/widgets/ChatAppBar.dart';
import 'package:message/widgets/ChatListWidget.dart';
import 'package:message/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
