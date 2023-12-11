// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_and_unit_test/main.dart';

void main() {
  testWidgets('Testing increament counter', (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: MyHomePage(
        title: '',
      ),
    ));
    await widgetTester.tap(
      find.byKey(
        const ValueKey('test 1'),
      ),
    );
  });
}
