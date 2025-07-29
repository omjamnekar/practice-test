import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:practice_test/main.dart';

void main() {
  testGoldens('CounterPage golden', (tester) async {
    await loadAppFonts();

    await tester.pumpWidgetBuilder(
      const MyApp(),
      surfaceSize: const Size(400, 800), // ✅ Fix size for consistency
      wrapper: materialAppWrapper(platform: TargetPlatform.android),
    );

    await screenMatchesGolden(
      tester,
      'counter_page_golden',
      autoHeight: false,
      customPump: (tester) async => await tester.pumpAndSettle(),
    );
  });
}
