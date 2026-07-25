import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for BillingPrepayRequest
void main() {
  final BillingPrepayRequest? instance = /* BillingPrepayRequest(...) */ null;
  // TODO add properties to the entity

  group(BillingPrepayRequest, () {
    // Module the prepay should be applied to (for example `default`).
    // Optional<String?> module
    test('to test the property `module`', () async {
      // TODO
    });

    // Amount to add to prepay balance. Minimum is $10.
    // Optional<num?> amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Whether the prepay balance should be used automatically.
    // Optional<String?> automaticUse
    test('to test the property `automaticUse`', () async {
      // TODO
    });

  });
}
