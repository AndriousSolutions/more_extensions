/// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
/// Use of this source code is governed by a 2-clause BSD License.
/// The main directory contains that LICENSE file.
///
///          Created 18 July, 2022
///
library example;

import '_export_files.dart';

void main() {
  //
  testExampleApp();
  //
  stringExtensionTests();
}

//
void testExampleApp() {
  /// Define a test. The TestWidgets function also provides a WidgetTester
  /// to work with. The WidgetTester allows you to build and interact
  /// with widgets in the test environment.
  testWidgets('testing extensions', (WidgetTester tester) async {
    /// Flutter won’t automatically rebuild your widget in the test environment.
    /// Use pump() or pumpAndSettle() to ask Flutter to rebuild the widget.
    await tester.pumpWidget(const MyApp());

    /// pumpAndSettle() waits for all animations to complete.
    await tester.pumpAndSettle();

    testExtensions(tester);

    testGetUtils(tester);
  });
}
