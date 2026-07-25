import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for QsOrderRequest
void main() {
  final QsOrderRequest? instance = /* QsOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(QsOrderRequest, () {
    // QuickServer plan/server id from getNewQs.
    // int server
    test('to test the property `server`', () async {
      // TODO
    });

    // Root password for the QuickServer.
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // Terms-of-service acceptance. Must be true to place the order.
    // bool tos
    test('to test the property `tos`', () async {
      // TODO
    });

    // OS template file name from getNewQs (falls back to a default if unrecognized).
    // Optional<String?> os (default value: '')
    test('to test the property `os`', () async {
      // TODO
    });

    // Free-form note saved on the service row.
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

  });
}
