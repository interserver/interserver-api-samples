import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for CreateGeoFirewallRule
void main() {
  final CreateGeoFirewallRule? instance = /* CreateGeoFirewallRule(...) */ null;
  // TODO add properties to the entity

  group(CreateGeoFirewallRule, () {
    // 1 = Block,  0 = Whitelist
    // int xdpAction
    test('to test the property `xdpAction`', () async {
      // TODO
    });

    // Optional<int?> destinationPort (default value: 80)
    test('to test the property `destinationPort`', () async {
      // TODO
    });

    // To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
    // Optional<int?> countryCode
    test('to test the property `countryCode`', () async {
      // TODO
    });

    // ASN number
    // Optional<int?> asn
    test('to test the property `asn`', () async {
      // TODO
    });

  });
}
