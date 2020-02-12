import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:message/widgets/ChatItemWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(body: ChatItemWidget(0)),
  );
  testWidgets('ChatItemWidget UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Column), findsNWidgets(1));
    expect(find.byType(Row), findsNWidgets(2));
    expect(find.byType(Text), findsNWidgets(2));
  });
}
