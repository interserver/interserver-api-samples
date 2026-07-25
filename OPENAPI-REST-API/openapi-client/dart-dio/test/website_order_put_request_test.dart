import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for WebsiteOrderPutRequest
void main() {
  final WebsiteOrderPutRequest? instance = /* WebsiteOrderPutRequest(...) */ null;
  // TODO add properties to the entity

  group(WebsiteOrderPutRequest, () {
    // Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
    // int packageId
    test('to test the property `packageId`', () async {
      // TODO
    });

    // Control-panel admin password. If blank, a random password is generated server-side.
    // Optional<String?> rootpass (default value: '')
    test('to test the property `rootpass`', () async {
      // TODO
    });

    // Billing cycle in months (1 / 6 / 12 / 24 / 36).
    // Optional<int?> period (default value: 1)
    test('to test the property `period`', () async {
      // TODO
    });

    // Coupon code.
    // Optional<String?> coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Promo bundle id from getNewWebsite.serviceOffers.
    // Optional<int?> serviceOfferId (default value: 0)
    test('to test the property `serviceOfferId`', () async {
      // TODO
    });

    // Auto-installer id (0 = none).
    // Optional<int?> script (default value: 0)
    test('to test the property `script`', () async {
      // TODO
    });

    // Free-form note saved on the service row.
    // Optional<String?> comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

    // When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
    // Optional<bool?> registerDomain (default value: false)
    test('to test the property `registerDomain`', () async {
      // TODO
    });

  });
}
