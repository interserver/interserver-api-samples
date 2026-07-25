import 'package:test/test.dart';
import 'package:interserver_api/interserver_api.dart';

// tests for DomainBillingDetails
void main() {
  final DomainBillingDetails? instance = /* DomainBillingDetails(...) */ null;
  // TODO add properties to the entity

  group(DomainBillingDetails, () {
    // Date of the last invoice for the domain.
    // Optional<String?> serviceLastInvoiceDate
    test('to test the property `serviceLastInvoiceDate`', () async {
      // TODO
    });

    // Current payment status (e.g., Paid, Unpaid).
    // Optional<String?> servicePaymentStatus
    test('to test the property `servicePaymentStatus`', () async {
      // TODO
    });

    // Billing frequency (e.g., Yearly, Monthly).
    // Optional<String?> serviceFrequency
    test('to test the property `serviceFrequency`', () async {
      // TODO
    });

    // Next billing date (ISO 8601).
    // Optional<String?> nextDate
    test('to test the property `nextDate`', () async {
      // TODO
    });

    // Human-readable next invoice date.
    // Optional<String?> serviceNextInvoiceDate
    test('to test the property `serviceNextInvoiceDate`', () async {
      // TODO
    });

    // Billing currency code.
    // Optional<String?> serviceCurrency
    test('to test the property `serviceCurrency`', () async {
      // TODO
    });

    // Billing currency symbol.
    // Optional<String?> serviceCurrencySymbol
    test('to test the property `serviceCurrencySymbol`', () async {
      // TODO
    });

    // Cost breakdown information.
    // Optional<String?> serviceCostInfo
    test('to test the property `serviceCostInfo`', () async {
      // TODO
    });

    // Optional<DomainBillingExtra?> serviceExtra
    test('to test the property `serviceExtra`', () async {
      // TODO
    });

    // Raw JSON string of extra billing data.
    // Optional<String?> serviceExtraJson
    test('to test the property `serviceExtraJson`', () async {
      // TODO
    });

  });
}
