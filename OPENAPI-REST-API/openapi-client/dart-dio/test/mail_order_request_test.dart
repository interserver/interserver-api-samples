import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for MailOrderRequest
void main() {
  final MailOrderRequest? instance = /* MailOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(MailOrderRequest, () {
    // Mail plan service type id from getNewMail.serviceTypes (must be buyable).
    // int serviceType
    test('to test the property `serviceType`', () async {
      // TODO
    });

    // Coupon code.
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Free-form note saved on the service row (used on addMail).
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

  });
}
