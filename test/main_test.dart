import 'package:flutter_test/flutter_test.dart';

import 'package:message/main.dart';

import 'package:message/pages/RegisterPage.dart';

void main() {
  testWidgets('Main UI', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Message());
    expect(find.byWidget(RegisterPage()), findsOneWidget);
  });
}
