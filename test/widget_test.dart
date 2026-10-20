import 'package:flutter_test/flutter_test.dart';

import 'package:rihla/main.dart';

void main() {
  testWidgets('Home screen displays the featured destination', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const RihlaApp());

    expect(find.text('Ahlan, Rayen 👋'), findsOneWidget);
    expect(find.text('Sidi Bou Saïd'), findsNWidgets(2));
    expect(find.text('4.8'), findsOneWidget);
    expect(find.text('Tunis'), findsNWidgets(2));
  });
}
