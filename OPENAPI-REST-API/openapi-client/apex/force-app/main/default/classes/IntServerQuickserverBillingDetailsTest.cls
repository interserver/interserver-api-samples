@isTest
private class IntServerQuickserverBillingDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = quickserverBillingDetails1;
        IntServerQuickserverBillingDetails quickserverBillingDetails3 = new IntServerQuickserverBillingDetails();
        IntServerQuickserverBillingDetails quickserverBillingDetails4 = quickserverBillingDetails3;

        System.assert(quickserverBillingDetails1.equals(quickserverBillingDetails2));
        System.assert(quickserverBillingDetails2.equals(quickserverBillingDetails1));
        System.assert(quickserverBillingDetails1.equals(quickserverBillingDetails1));
        System.assert(quickserverBillingDetails3.equals(quickserverBillingDetails4));
        System.assert(quickserverBillingDetails4.equals(quickserverBillingDetails3));
        System.assert(quickserverBillingDetails3.equals(quickserverBillingDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails3 = new IntServerQuickserverBillingDetails();
        IntServerQuickserverBillingDetails quickserverBillingDetails4 = new IntServerQuickserverBillingDetails();

        System.assert(quickserverBillingDetails1.equals(quickserverBillingDetails2));
        System.assert(quickserverBillingDetails2.equals(quickserverBillingDetails1));
        System.assert(quickserverBillingDetails3.equals(quickserverBillingDetails4));
        System.assert(quickserverBillingDetails4.equals(quickserverBillingDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = new IntServerQuickserverBillingDetails();

        System.assertEquals(false, quickserverBillingDetails1.equals('foo'));
        System.assertEquals(false, quickserverBillingDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = new IntServerQuickserverBillingDetails();
        IntServerQuickserverBillingDetails quickserverBillingDetails3;

        System.assertEquals(false, quickserverBillingDetails1.equals(quickserverBillingDetails3));
        System.assertEquals(false, quickserverBillingDetails2.equals(quickserverBillingDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = new IntServerQuickserverBillingDetails();

        System.assertEquals(quickserverBillingDetails1.hashCode(), quickserverBillingDetails1.hashCode());
        System.assertEquals(quickserverBillingDetails2.hashCode(), quickserverBillingDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerQuickserverBillingDetails quickserverBillingDetails1 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails2 = IntServerQuickserverBillingDetails.getExample();
        IntServerQuickserverBillingDetails quickserverBillingDetails3 = new IntServerQuickserverBillingDetails();
        IntServerQuickserverBillingDetails quickserverBillingDetails4 = new IntServerQuickserverBillingDetails();

        System.assert(quickserverBillingDetails1.equals(quickserverBillingDetails2));
        System.assert(quickserverBillingDetails3.equals(quickserverBillingDetails4));
        System.assertEquals(quickserverBillingDetails1.hashCode(), quickserverBillingDetails2.hashCode());
        System.assertEquals(quickserverBillingDetails3.hashCode(), quickserverBillingDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerQuickserverBillingDetails quickserverBillingDetails = new IntServerQuickserverBillingDetails();
        Map<String, String> x-property-mappings = quickserverBillingDetails.getx-property-mappings();
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
