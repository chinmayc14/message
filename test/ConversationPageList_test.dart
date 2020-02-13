import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:message/pages/ConversationPage.dart';
import 'package:message/pages/ConversationPageSlide.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ConversationPageSlide(),
    ),
  );
  testWidgets('Conversation UI', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}
