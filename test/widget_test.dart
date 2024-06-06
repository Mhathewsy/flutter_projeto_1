import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:desafio_login/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Constrói o app e exibe um frame.
    await tester.pumpWidget(MyApp());

    // Verifica se o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca no ícone de adição e exibe um frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica se o contador incrementou.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}