import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:practice_test/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Full App Test", (tester) async {
    app.main();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('increment_fab')));
    await tester.pumpAndSettle();

    expect(find.text('Count: 1'), findsOneWidget);
  });
}
