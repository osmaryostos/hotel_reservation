// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contacts_login/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Checkout Hotel Luxury widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
       MaterialApp(
      home: MyHomePage(name:'hotel1', nigths: 2, ))
    );
    // Verify text
    final button = find.byType(FilledButton);
    expect(find.text('CHECKOUT'), findsOneWidget);
    expect(find.text('GRAND HOTEL'), findsOneWidget);
    expect(button, findsOneWidget);

   });
  testWidgets('Chekout Hotel Another widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
       MaterialApp(
      home: MyHomePage(name:'hotel2', nigths: 2, ))
    );
    // Verify text
    final button = find.byType(FilledButton);
    expect(find.text('CHECKOUT'), findsOneWidget);
    expect(find.text('LUXURY HOTEL'), findsOneWidget);
    expect(button, findsOneWidget);


   });
 
}


