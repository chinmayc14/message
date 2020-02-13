import 'package:flutter/material.dart';
import 'package:message/widgets/ChatAppBar.dart';
import 'package:message/widgets/ChatListWidget.dart';
import 'package:message/widgets/InputWidget.dart';
import 'package:message/config/Palette.dart';
import 'package:message/widgets/ConversationBottomSheet.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(flex: 2, child: ChatAppBar()), // Custom app bar for chat screen
      Expanded(
          flex: 11,
          child: Container(
            color: Palette.chatBackgroundColor,
            child: ChatListWidget(),
          ))
    ]);
  }
}
