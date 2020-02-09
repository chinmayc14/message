import 'package:flutter_test/flutter_test.dart';

import 'package:message/main.dart';

void main() {
  testWidgets('Checking if hello world shows up', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Message());
    expect(find.text('Hello World!'), findsOneWidget);
  });
}
