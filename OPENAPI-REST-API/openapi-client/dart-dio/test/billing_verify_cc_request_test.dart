import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for BillingVerifyCcRequest
void main() {
  final BillingVerifyCcRequest? instance = /* BillingVerifyCcRequest(...) */ null;
  // TODO add properties to the entity

  group(BillingVerifyCcRequest, () {
    // Card index to verify.
    // Optional<int?> idx
    test('to test the property `idx`', () async {
      // TODO
    });

    // CVV code for verification.
    // Optional<String?> ccCcv2
    test('to test the property `ccCcv2`', () async {
      // TODO
    });

    // First micro-charge amount for verification.
    // Optional<String?> ccAmount1
    test('to test the property `ccAmount1`', () async {
      // TODO
    });

    // Second micro-charge amount for verification.
    // Optional<String?> ccAmount2
    test('to test the property `ccAmount2`', () async {
      // TODO
    });

    // Whether terms were accepted for verification.
    // Optional<bool?> terms
    test('to test the property `terms`', () async {
      // TODO
    });

  });
}
