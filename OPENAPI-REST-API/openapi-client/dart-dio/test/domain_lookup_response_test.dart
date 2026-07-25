import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DomainLookupResponse
void main() {
  final DomainLookupResponse? instance = /* DomainLookupResponse(...) */ null;
  // TODO add properties to the entity

  group(DomainLookupResponse, () {
    // Whether the domain is available to register.
    // Optional<bool?> available
    test('to test the property `available`', () async {
      // TODO
    });

    // Whether the domain is marked as premium by the registrar.
    // Optional<bool?> premium
    test('to test the property `premium`', () async {
      // TODO
    });

    // Indicates if the domain is already used by a website service.
    // Optional<bool?> website
    test('to test the property `website`', () async {
      // TODO
    });

    // Indicates if the domain already exists as a domain service on the account.
    // Optional<bool?> domainService
    test('to test the property `domainService`', () async {
      // TODO
    });

    // Service catalog details for the domain's TLD.
    // Optional<Object?> service
    test('to test the property `service`', () async {
      // TODO
    });

    // Whether Whois privacy is available for the TLD.
    // Optional<bool?> whoisPrivacy
    test('to test the property `whoisPrivacy`', () async {
      // TODO
    });

    // Calculated registration price, when available.
    // Optional<String?> new_
    test('to test the property `new_`', () async {
      // TODO
    });

    // Calculated renewal price, when available.
    // Optional<String?> renewal
    test('to test the property `renewal`', () async {
      // TODO
    });

    // Calculated transfer price, when available.
    // Optional<String?> transfer
    test('to test the property `transfer`', () async {
      // TODO
    });

    // Registrar field requirements for this domain/TLD.
    // Optional<Object?> fields
    test('to test the property `fields`', () async {
      // TODO
    });

    // Pricing information normalized to supported currencies.
    // Optional<Object?> currencies
    test('to test the property `currencies`', () async {
      // TODO
    });

  });
}
