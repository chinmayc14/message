import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:message/widgets/ChatAppBar.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(body: ChatAppBar()),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.text('Chinmay Chaudhari'), findsOneWidget);
    expect(find.text('@chinmayc14'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
