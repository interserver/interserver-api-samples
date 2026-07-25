import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for CreateFirewallRule
void main() {
  final CreateFirewallRule? instance = /* CreateFirewallRule(...) */ null;
  // TODO add properties to the entity

  group(CreateFirewallRule, () {
    // 1 = TCP, 2 = UDP
    // int protocolId
    test('to test the property `protocolId`', () async {
      // TODO
    });

    // 1 = Block,  0 = Whitelist
    // int xdpAction
    test('to test the property `xdpAction`', () async {
      // TODO
    });

    // Optional<int?> destinationPort (default value: 80)
    test('to test the property `destinationPort`', () async {
      // TODO
    });

    // Source IP address to match. Use '0.0.0.0' to match any source.
    // Optional<String?> sourceIp (default value: '0.0.0.0')
    test('to test the property `sourceIp`', () async {
      // TODO
    });

    // Optional<int?> sourcePort (default value: 0)
    test('to test the property `sourcePort`', () async {
      // TODO
    });

  });
}
