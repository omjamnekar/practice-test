import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice_test/main.dart';

void main() {
  testWidgets('Increment and decrement test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.byKey(Key('increment_fab')));
    await tester.pump();

    expect(find.text('Count: 1'), findsOneWidget);

    await tester.tap(find.byKey(Key('decrement_fab')));
    await tester.pump();

    expect(find.text('Count: 0'), findsOneWidget);
  });
}
