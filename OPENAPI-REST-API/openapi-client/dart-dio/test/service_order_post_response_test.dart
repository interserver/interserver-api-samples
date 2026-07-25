import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for ServiceOrderPostResponse
void main() {
  final ServiceOrderPostResponse? instance = /* ServiceOrderPostResponse(...) */ null;
  // TODO add properties to the entity

  group(ServiceOrderPostResponse, () {
    // Whether the order was accepted and can proceed to payment.
    // Optional<bool?> continue_
    test('to test the property `continue_`', () async {
      // TODO
    });

    // List of validation errors (empty on success).
    // Optional<List<String>?> errors
    test('to test the property `errors`', () async {
      // TODO
    });

    // Total cost of the order.
    // Optional<String?> totalCost
    test('to test the property `totalCost`', () async {
      // TODO
    });

    // Primary invoice ID for payment.
    // Optional<String?> iid
    test('to test the property `iid`', () async {
      // TODO
    });

    // All invoice identifiers associated with the order.
    // Optional<List<String>?> iids
    test('to test the property `iids`', () async {
      // TODO
    });

    // Numeric invoice IDs for use with billing endpoints.
    // Optional<List<String>?> realIids
    test('to test the property `realIids`', () async {
      // TODO
    });

    // The new service ID created by the order.
    // Optional<int?> serviceId
    test('to test the property `serviceId`', () async {
      // TODO
    });

    // Human-readable description of the invoice.
    // Optional<String?> invoiceDescription
    test('to test the property `invoiceDescription`', () async {
      // TODO
    });

  });
}
