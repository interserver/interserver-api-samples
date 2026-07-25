//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:interserver_api/api.dart';
import 'package:test/test.dart';

// tests for WebsiteOrderPutRequest
void main() {
  // final instance = WebsiteOrderPutRequest();

  group('test WebsiteOrderPutRequest', () {
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
    // String rootpass (default value: '')
    test('to test the property `rootpass`', () async {
      // TODO
    });

    // Billing cycle in months (1 / 6 / 12 / 24 / 36).
    // int period (default value: 1)
    test('to test the property `period`', () async {
      // TODO
    });

    // Coupon code.
    // String coupon (default value: '')
    test('to test the property `coupon`', () async {
      // TODO
    });

    // Promo bundle id from getNewWebsite.serviceOffers.
    // int serviceOfferId (default value: 0)
    test('to test the property `serviceOfferId`', () async {
      // TODO
    });

    // Auto-installer id (0 = none).
    // int script (default value: 0)
    test('to test the property `script`', () async {
      // TODO
    });

    // Free-form note saved on the service row.
    // String comment (default value: '')
    test('to test the property `comment`', () async {
      // TODO
    });

    // When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
    // bool registerDomain (default value: false)
    test('to test the property `registerDomain`', () async {
      // TODO
    });


  });

}
