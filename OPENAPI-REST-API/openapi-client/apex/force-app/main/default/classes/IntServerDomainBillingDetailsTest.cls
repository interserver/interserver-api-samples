@isTest
private class IntServerDomainBillingDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = domainBillingDetails1;
        IntServerDomainBillingDetails domainBillingDetails3 = new IntServerDomainBillingDetails();
        IntServerDomainBillingDetails domainBillingDetails4 = domainBillingDetails3;

        System.assert(domainBillingDetails1.equals(domainBillingDetails2));
        System.assert(domainBillingDetails2.equals(domainBillingDetails1));
        System.assert(domainBillingDetails1.equals(domainBillingDetails1));
        System.assert(domainBillingDetails3.equals(domainBillingDetails4));
        System.assert(domainBillingDetails4.equals(domainBillingDetails3));
        System.assert(domainBillingDetails3.equals(domainBillingDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails3 = new IntServerDomainBillingDetails();
        IntServerDomainBillingDetails domainBillingDetails4 = new IntServerDomainBillingDetails();

        System.assert(domainBillingDetails1.equals(domainBillingDetails2));
        System.assert(domainBillingDetails2.equals(domainBillingDetails1));
        System.assert(domainBillingDetails3.equals(domainBillingDetails4));
        System.assert(domainBillingDetails4.equals(domainBillingDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = new IntServerDomainBillingDetails();

        System.assertEquals(false, domainBillingDetails1.equals('foo'));
        System.assertEquals(false, domainBillingDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = new IntServerDomainBillingDetails();
        IntServerDomainBillingDetails domainBillingDetails3;

        System.assertEquals(false, domainBillingDetails1.equals(domainBillingDetails3));
        System.assertEquals(false, domainBillingDetails2.equals(domainBillingDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = new IntServerDomainBillingDetails();

        System.assertEquals(domainBillingDetails1.hashCode(), domainBillingDetails1.hashCode());
        System.assertEquals(domainBillingDetails2.hashCode(), domainBillingDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainBillingDetails domainBillingDetails1 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails2 = IntServerDomainBillingDetails.getExample();
        IntServerDomainBillingDetails domainBillingDetails3 = new IntServerDomainBillingDetails();
        IntServerDomainBillingDetails domainBillingDetails4 = new IntServerDomainBillingDetails();

        System.assert(domainBillingDetails1.equals(domainBillingDetails2));
        System.assert(domainBillingDetails3.equals(domainBillingDetails4));
        System.assertEquals(domainBillingDetails1.hashCode(), domainBillingDetails2.hashCode());
        System.assertEquals(domainBillingDetails3.hashCode(), domainBillingDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainBillingDetails domainBillingDetails = new IntServerDomainBillingDetails();
        Map<String, String> x-property-mappings = domainBillingDetails.getx-property-mappings();
        System.assertEquals('serviceLastInvoiceDate', x-property-mappings.get('service_last_invoice_date'));
        System.assertEquals('servicePaymentStatus', x-property-mappings.get('service_payment_status'));
        System.assertEquals('serviceFrequency', x-property-mappings.get('service_frequency'));
        System.assertEquals('nextDate', x-property-mappings.get('next_date'));
        System.assertEquals('serviceNextInvoiceDate', x-property-mappings.get('service_next_invoice_date'));
        System.assertEquals('serviceCurrency', x-property-mappings.get('service_currency'));
        System.assertEquals('serviceCurrencySymbol', x-property-mappings.get('service_currency_symbol'));
        System.assertEquals('serviceCostInfo', x-property-mappings.get('service_cost_info'));
        System.assertEquals('serviceExtra', x-property-mappings.get('service_extra'));
        System.assertEquals('serviceExtraJson', x-property-mappings.get('service_extra_json'));
    }
}
