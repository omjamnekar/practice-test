import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:practice_test/main.dart';

void main() {
  testGoldens('CounterPage golden', (tester) async {
    await loadAppFonts();
    await tester.pumpWidgetBuilder(MyApp());
    await screenMatchesGolden(tester, 'counter_page_golden');
  });
}
