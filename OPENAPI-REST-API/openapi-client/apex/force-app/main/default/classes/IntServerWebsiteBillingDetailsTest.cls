@isTest
private class IntServerWebsiteBillingDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = websiteBillingDetails1;
        IntServerWebsiteBillingDetails websiteBillingDetails3 = new IntServerWebsiteBillingDetails();
        IntServerWebsiteBillingDetails websiteBillingDetails4 = websiteBillingDetails3;

        System.assert(websiteBillingDetails1.equals(websiteBillingDetails2));
        System.assert(websiteBillingDetails2.equals(websiteBillingDetails1));
        System.assert(websiteBillingDetails1.equals(websiteBillingDetails1));
        System.assert(websiteBillingDetails3.equals(websiteBillingDetails4));
        System.assert(websiteBillingDetails4.equals(websiteBillingDetails3));
        System.assert(websiteBillingDetails3.equals(websiteBillingDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails3 = new IntServerWebsiteBillingDetails();
        IntServerWebsiteBillingDetails websiteBillingDetails4 = new IntServerWebsiteBillingDetails();

        System.assert(websiteBillingDetails1.equals(websiteBillingDetails2));
        System.assert(websiteBillingDetails2.equals(websiteBillingDetails1));
        System.assert(websiteBillingDetails3.equals(websiteBillingDetails4));
        System.assert(websiteBillingDetails4.equals(websiteBillingDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = new IntServerWebsiteBillingDetails();

        System.assertEquals(false, websiteBillingDetails1.equals('foo'));
        System.assertEquals(false, websiteBillingDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = new IntServerWebsiteBillingDetails();
        IntServerWebsiteBillingDetails websiteBillingDetails3;

        System.assertEquals(false, websiteBillingDetails1.equals(websiteBillingDetails3));
        System.assertEquals(false, websiteBillingDetails2.equals(websiteBillingDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = new IntServerWebsiteBillingDetails();

        System.assertEquals(websiteBillingDetails1.hashCode(), websiteBillingDetails1.hashCode());
        System.assertEquals(websiteBillingDetails2.hashCode(), websiteBillingDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerWebsiteBillingDetails websiteBillingDetails1 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails2 = IntServerWebsiteBillingDetails.getExample();
        IntServerWebsiteBillingDetails websiteBillingDetails3 = new IntServerWebsiteBillingDetails();
        IntServerWebsiteBillingDetails websiteBillingDetails4 = new IntServerWebsiteBillingDetails();

        System.assert(websiteBillingDetails1.equals(websiteBillingDetails2));
        System.assert(websiteBillingDetails3.equals(websiteBillingDetails4));
        System.assertEquals(websiteBillingDetails1.hashCode(), websiteBillingDetails2.hashCode());
        System.assertEquals(websiteBillingDetails3.hashCode(), websiteBillingDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerWebsiteBillingDetails websiteBillingDetails = new IntServerWebsiteBillingDetails();
        Map<String, String> x-property-mappings = websiteBillingDetails.getx-property-mappings();
        System.assertEquals('serviceLastInvoiceDate', x-property-mappings.get('service_last_invoice_date'));
        System.assertEquals('servicePaymentStatus', x-property-mappings.get('service_payment_status'));
        System.assertEquals('serviceFrequency', x-property-mappings.get('service_frequency'));
        System.assertEquals('nextDate', x-property-mappings.get('next_date'));
        System.assertEquals('serviceNextInvoiceDate', x-property-mappings.get('service_next_invoice_date'));
        System.assertEquals('serviceCurrency', x-property-mappings.get('service_currency'));
        System.assertEquals('serviceCurrencySymbol', x-property-mappings.get('service_currency_symbol'));
        System.assertEquals('serviceCoupon', x-property-mappings.get('service_coupon'));
        System.assertEquals('serviceCostInfo', x-property-mappings.get('service_cost_info'));
        System.assertEquals('serviceExtra', x-property-mappings.get('service_extra'));
        System.assertEquals('serviceExtraJson', x-property-mappings.get('service_extra_json'));
    }
}
