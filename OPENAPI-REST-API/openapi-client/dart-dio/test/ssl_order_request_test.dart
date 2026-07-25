import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for SslOrderRequest
void main() {
  final SslOrderRequest? instance = /* SslOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(SslOrderRequest, () {
    // SSL package service type id from getNewSsl.serviceTypes.
    // int ssl
    test('to test the property `ssl`', () async {
      // TODO
    });

    // Domain the certificate is issued for. Wildcard certs require *.domain.com format.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // Domain-control approver email (required for all SSL orders).
    // String approverEmail
    test('to test the property `approverEmail`', () async {
      // TODO
    });

    // Billing frequency in months (12, 24, or 36).
    // Optional<int?> frequency (default value: 12)
    test('to test the property `frequency`', () async {
      // TODO
    });

    // Coupon code.
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Whether the CSR is server-generated or customer-provided.
    // Optional<String?> csrType (default value: 'generated')
    test('to test the property `csrType`', () async {
      // TODO
    });

    // PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
    // Optional<String?> csr (default value: '')
    test('to test the property `csr`', () async {
      // TODO
    });

    // Contact first name (defaults from account).
    // Optional<String?> firstname
    test('to test the property `firstname`', () async {
      // TODO
    });

    // Contact last name (defaults from account).
    // Optional<String?> lastname
    test('to test the property `lastname`', () async {
      // TODO
    });

    // Contact email (defaults from account).
    // Optional<String?> email
    test('to test the property `email`', () async {
      // TODO
    });

    // Contact address (defaults from account).
    // Optional<String?> address
    test('to test the property `address`', () async {
      // TODO
    });

    // Contact city (defaults from account).
    // Optional<String?> city
    test('to test the property `city`', () async {
      // TODO
    });

    // Contact state/region (defaults from account).
    // Optional<String?> state
    test('to test the property `state`', () async {
      // TODO
    });

    // Contact postal code (defaults from account).
    // Optional<String?> zip
    test('to test the property `zip`', () async {
      // TODO
    });

    // Contact country (defaults from account).
    // Optional<String?> country
    test('to test the property `country`', () async {
      // TODO
    });

    // Contact phone (defaults from account).
    // Optional<String?> phone
    test('to test the property `phone`', () async {
      // TODO
    });

    // Contact company/organization (defaults from account).
    // Optional<String?> company
    test('to test the property `company`', () async {
      // TODO
    });

    // Contact department (defaults to Administration).
    // Optional<String?> department (default value: 'Administration')
    test('to test the property `department`', () async {
      // TODO
    });

    // EV certificate incorporating agency (only for EV packages).
    // Optional<String?> agency
    test('to test the property `agency`', () async {
      // TODO
    });

    // EV certificate business category (only for EV packages).
    // Optional<String?> businessCategory
    test('to test the property `businessCategory`', () async {
      // TODO
    });

  });
}
