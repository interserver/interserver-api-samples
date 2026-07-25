@isTest
private class IntServerVpsBillingDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = vpsBillingDetails1;
        IntServerVpsBillingDetails vpsBillingDetails3 = new IntServerVpsBillingDetails();
        IntServerVpsBillingDetails vpsBillingDetails4 = vpsBillingDetails3;

        System.assert(vpsBillingDetails1.equals(vpsBillingDetails2));
        System.assert(vpsBillingDetails2.equals(vpsBillingDetails1));
        System.assert(vpsBillingDetails1.equals(vpsBillingDetails1));
        System.assert(vpsBillingDetails3.equals(vpsBillingDetails4));
        System.assert(vpsBillingDetails4.equals(vpsBillingDetails3));
        System.assert(vpsBillingDetails3.equals(vpsBillingDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails3 = new IntServerVpsBillingDetails();
        IntServerVpsBillingDetails vpsBillingDetails4 = new IntServerVpsBillingDetails();

        System.assert(vpsBillingDetails1.equals(vpsBillingDetails2));
        System.assert(vpsBillingDetails2.equals(vpsBillingDetails1));
        System.assert(vpsBillingDetails3.equals(vpsBillingDetails4));
        System.assert(vpsBillingDetails4.equals(vpsBillingDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = new IntServerVpsBillingDetails();

        System.assertEquals(false, vpsBillingDetails1.equals('foo'));
        System.assertEquals(false, vpsBillingDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = new IntServerVpsBillingDetails();
        IntServerVpsBillingDetails vpsBillingDetails3;

        System.assertEquals(false, vpsBillingDetails1.equals(vpsBillingDetails3));
        System.assertEquals(false, vpsBillingDetails2.equals(vpsBillingDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = new IntServerVpsBillingDetails();

        System.assertEquals(vpsBillingDetails1.hashCode(), vpsBillingDetails1.hashCode());
        System.assertEquals(vpsBillingDetails2.hashCode(), vpsBillingDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsBillingDetails vpsBillingDetails1 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails2 = IntServerVpsBillingDetails.getExample();
        IntServerVpsBillingDetails vpsBillingDetails3 = new IntServerVpsBillingDetails();
        IntServerVpsBillingDetails vpsBillingDetails4 = new IntServerVpsBillingDetails();

        System.assert(vpsBillingDetails1.equals(vpsBillingDetails2));
        System.assert(vpsBillingDetails3.equals(vpsBillingDetails4));
        System.assertEquals(vpsBillingDetails1.hashCode(), vpsBillingDetails2.hashCode());
        System.assertEquals(vpsBillingDetails3.hashCode(), vpsBillingDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsBillingDetails vpsBillingDetails = new IntServerVpsBillingDetails();
        Map<String, String> x-property-mappings = vpsBillingDetails.getx-property-mappings();
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
