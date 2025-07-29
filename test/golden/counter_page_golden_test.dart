import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:practice_test/main.dart';

void main() {
  testGoldens('CounterPage golden', (tester) async {
    await loadAppFonts();
    await tester.pumpWidgetBuilder(
      MyApp(),
      surfaceSize: const Size(400, 800),
      wrapper: materialAppWrapper(platform: TargetPlatform.android),
    );
    await screenMatchesGolden(tester, 'counter_page_golden');
  });
}
