// test/widget/counter_page_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_test/counter_bloc.dart';
import 'package:practice_test/main.dart'; // or import CounterPage directly

void main() {
  testWidgets('CounterPage shows initial count and increments on tap', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(create: (_) => CounterBloc(), child: CounterPage()),
      ),
    );

    // Verify initial state
    expect(find.text('Count: 0'), findsOneWidget);

    // Tap + button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify increment
    expect(find.text('Count: 1'), findsOneWidget);
  }, tags: ['widget']); // ✅ Add tag
}
