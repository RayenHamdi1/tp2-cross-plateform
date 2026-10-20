import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rihla/main.dart';

void main() {
  testWidgets('Home screen displays the featured destination', (
    WidgetTester tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const RihlaApp());

    expect(find.text('Ahlan, Rayen 👋'), findsOneWidget);
    expect(find.text('Sidi Bou Saïd'), findsNWidgets(2));
    expect(find.text('4.8'), findsNWidgets(3));
    expect(find.text('Tunis'), findsNWidgets(2));
  });

  testWidgets('favorites toggle independently and survive category filtering', (
    WidgetTester tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const RihlaApp());

    expect(find.byIcon(Icons.favorite_border), findsAtLeastNWidgets(3));

    await tester.tap(find.byIcon(Icons.favorite_border).at(2));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('Ajouté aux favoris'), findsOneWidget);

    await tester.tap(find.text('Désert'));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    await tester.tap(find.text('Tout'));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsNothing);
    expect(find.byIcon(Icons.favorite_border), findsAtLeastNWidgets(1));
    expect(find.text('Retiré des favoris'), findsOneWidget);
  });

  testWidgets('bottom navigation switches tabs and preserves the category', (
    WidgetTester tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(const RihlaApp());

    await tester.tap(find.text('Désert'));
    await tester.pump();
    await tester.tap(find.text('Favoris'));
    await tester.pumpAndSettle();

    expect(find.text('Bientôt disponible'), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.byIcon(Icons.explore_outlined), findsOneWidget);

    await tester.tap(find.text('Profil'));
    await tester.pumpAndSettle();
    expect(find.text('Bientôt disponible'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

    await tester.tap(find.text('Explorer'));
    await tester.pumpAndSettle();
    expect(find.text('Ahlan, Rayen 👋'), findsOneWidget);
    expect(find.widgetWithText(ChoiceChip, 'Désert'), findsOneWidget);
  });
}
