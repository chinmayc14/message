import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:message/pages/ConversationPage.dart';
import 'package:message/widgets/ChatAppBar.dart';
import 'package:message/widgets/ChatListWidget.dart';
import 'package:message/widgets/InputWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConversationPage(),
    ),
  );
  testWidgets('ConversationPage UI', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}
