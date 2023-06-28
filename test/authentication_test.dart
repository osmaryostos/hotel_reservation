// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contacts_login/Form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Checkout Hotel Luxury widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
       MaterialApp(
      home: SecondPage())
    );
    // Verify text
    final button = find.byType(ElevatedButton);
    expect(find.text('Enter your Name'), findsOneWidget);
    expect(find.text('Enter your Email'), findsOneWidget);
    expect(button, findsOneWidget);

   });

 
}

