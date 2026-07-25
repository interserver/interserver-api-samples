import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DomainOrderRequest
void main() {
  final DomainOrderRequest? instance = /* DomainOrderRequest(...) */ null;
  // TODO add properties to the entity

  group(DomainOrderRequest, () {
    // Fully-qualified domain to register or transfer (e.g. example.com).
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // Order type.
    // Optional<String?> type (default value: 'register')
    test('to test the property `type`', () async {
      // TODO
    });

    // Coupon code (addDomain only).
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Set to \"enable\" to add Whois privacy (addDomain only).
    // Optional<String?> whoisPrivacy
    test('to test the property `whoisPrivacy`', () async {
      // TODO
    });

  });
}
