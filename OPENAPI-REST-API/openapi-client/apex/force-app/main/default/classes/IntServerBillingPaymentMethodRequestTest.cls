@isTest
private class IntServerBillingPaymentMethodRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = billingPaymentMethodRequest1;
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest3 = new IntServerBillingPaymentMethodRequest();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest4 = billingPaymentMethodRequest3;

        System.assert(billingPaymentMethodRequest1.equals(billingPaymentMethodRequest2));
        System.assert(billingPaymentMethodRequest2.equals(billingPaymentMethodRequest1));
        System.assert(billingPaymentMethodRequest1.equals(billingPaymentMethodRequest1));
        System.assert(billingPaymentMethodRequest3.equals(billingPaymentMethodRequest4));
        System.assert(billingPaymentMethodRequest4.equals(billingPaymentMethodRequest3));
        System.assert(billingPaymentMethodRequest3.equals(billingPaymentMethodRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest3 = new IntServerBillingPaymentMethodRequest();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest4 = new IntServerBillingPaymentMethodRequest();

        System.assert(billingPaymentMethodRequest1.equals(billingPaymentMethodRequest2));
        System.assert(billingPaymentMethodRequest2.equals(billingPaymentMethodRequest1));
        System.assert(billingPaymentMethodRequest3.equals(billingPaymentMethodRequest4));
        System.assert(billingPaymentMethodRequest4.equals(billingPaymentMethodRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = new IntServerBillingPaymentMethodRequest();

        System.assertEquals(false, billingPaymentMethodRequest1.equals('foo'));
        System.assertEquals(false, billingPaymentMethodRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = new IntServerBillingPaymentMethodRequest();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest3;

        System.assertEquals(false, billingPaymentMethodRequest1.equals(billingPaymentMethodRequest3));
        System.assertEquals(false, billingPaymentMethodRequest2.equals(billingPaymentMethodRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = new IntServerBillingPaymentMethodRequest();

        System.assertEquals(billingPaymentMethodRequest1.hashCode(), billingPaymentMethodRequest1.hashCode());
        System.assertEquals(billingPaymentMethodRequest2.hashCode(), billingPaymentMethodRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest1 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest2 = IntServerBillingPaymentMethodRequest.getExample();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest3 = new IntServerBillingPaymentMethodRequest();
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest4 = new IntServerBillingPaymentMethodRequest();

        System.assert(billingPaymentMethodRequest1.equals(billingPaymentMethodRequest2));
        System.assert(billingPaymentMethodRequest3.equals(billingPaymentMethodRequest4));
        System.assertEquals(billingPaymentMethodRequest1.hashCode(), billingPaymentMethodRequest2.hashCode());
        System.assertEquals(billingPaymentMethodRequest3.hashCode(), billingPaymentMethodRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBillingPaymentMethodRequest billingPaymentMethodRequest = new IntServerBillingPaymentMethodRequest();
        Map<String, String> x-property-mappings = billingPaymentMethodRequest.getx-property-mappings();
        System.assertEquals('paymentMethod', x-property-mappings.get('payment_method'));
        System.assertEquals('ccAuto', x-property-mappings.get('cc_auto'));
    }
}
