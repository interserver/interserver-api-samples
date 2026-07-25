import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for FloatingIpOrderRequest
void main() {
  final FloatingIpOrderRequest? instance = /* FloatingIpOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(FloatingIpOrderRequest, () {
    // Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
    // int serviceType
    test('to test the property `serviceType`', () async {
      // TODO
    });

    // Coupon code.
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Free-form note saved on the service row (used on addFloatingIp).
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

  });
}
