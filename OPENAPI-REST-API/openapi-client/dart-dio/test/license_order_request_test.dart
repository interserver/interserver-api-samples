import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for LicenseOrderRequest
void main() {
  final LicenseOrderRequest? instance = /* LicenseOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(LicenseOrderRequest, () {
    // License service type id from getNewLicense.serviceTypes (must be buyable).
    // int package
    test('to test the property `package`', () async {
      // TODO
    });

    // IP address the license is bound to.
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });

    // Terms-of-service acceptance. Must be true to place the order.
    // bool tos
    test('to test the property `tos`', () async {
      // TODO
    });

    // Billing frequency in months.
    // Optional<int?> frequency (default value: 1)
    test('to test the property `frequency`', () async {
      // TODO
    });

    // Coupon code.
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Free-form note saved on the service row.
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

  });
}
