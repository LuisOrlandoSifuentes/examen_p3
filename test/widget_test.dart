import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:examen_pareja/main.dart'; // Cambia esto por el nombre de tu proyecto

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye la app
    await tester.pumpWidget(const MyApp());

    // Verifica que el contador empieza en 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca el botón y vuelve a construir el widget
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador ahora muestra 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
