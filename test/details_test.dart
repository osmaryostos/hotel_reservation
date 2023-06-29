// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contacts_login/GRDetails.dart';
import 'package:contacts_login/RSDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Detail Hotel Luxury widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
       MaterialApp(
      home: DetailsGR(name:'test' ))
    );
    // Verify text
    final button = find.byType(ElevatedButton);
    expect(find.text('Number of Nights'), findsOneWidget);
    expect(find.text('Excellent Choice, '), findsOneWidget);
    expect(button, findsWidgets);

   });
  testWidgets('Detail Hotel Another widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
       MaterialApp(
      home: DetailsRS())
    );
    // Verify text
    final button = find.byType(ElevatedButton);
    expect(find.text('Excellent Choice!'), findsOneWidget);
    expect(find.text('Royal Suites'), findsOneWidget);
    expect(button, findsWidgets);


   });
 
}


