/// Copyright 2024 Andrious Solutions Ltd. All rights reserved.
/// Use of this source code is governed by a 2-clause BSD License.
/// The main directory contains that LICENSE file.
///
///          Created 09 September, 2024
///

// ignore: avoid_relative_lib_imports
import '../example/test/_export_files.dart';

import '../example/test/widget_test.dart';

void main() => testPackage();

void testPackage() {
  /// Set up anything necessary before testing begins.
  /// Runs once before ALL tests or groups
  setUpAll(() async {});

  /// Runs before EACH test or group
  setUp(() async {
    // Ensure TestWidgetsFlutterBinding is explicitly initialized
    final TestWidgetsFlutterBinding binding =
        TestWidgetsFlutterBinding.ensureInitialized();

    // // (TODO: Tip # 4) Consider configuring your default screen size here.
    // // You can reset it to something else within a test
    // binding.window.physicalSizeTestValue = _deskTopSize;
  });

  /// Be sure the close the app after all the testing.
  /// Runs once after ALL tests or groups
  tearDownAll(() {});

  /// Runs after EACH test or group
  tearDown(() async {
    // Code that clears caches can go here
  });

  //
  group('Test Example App', testExampleApp);

  //
  stringExtensionTests();
}
