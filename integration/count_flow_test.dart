// integration_test/app_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:practice_test/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Full app integration test', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Initial count
    expect(find.text('Count: 0'), findsOneWidget);

    // Tap increment
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('Count: 1'), findsOneWidget);

    // Tap decrement
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('Count: 0'), findsOneWidget);
  }, tags: ['integration']);
}
