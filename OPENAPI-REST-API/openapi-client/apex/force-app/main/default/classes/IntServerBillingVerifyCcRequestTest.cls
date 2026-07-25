@isTest
private class IntServerBillingVerifyCcRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = billingVerifyCcRequest1;
        IntServerBillingVerifyCcRequest billingVerifyCcRequest3 = new IntServerBillingVerifyCcRequest();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest4 = billingVerifyCcRequest3;

        System.assert(billingVerifyCcRequest1.equals(billingVerifyCcRequest2));
        System.assert(billingVerifyCcRequest2.equals(billingVerifyCcRequest1));
        System.assert(billingVerifyCcRequest1.equals(billingVerifyCcRequest1));
        System.assert(billingVerifyCcRequest3.equals(billingVerifyCcRequest4));
        System.assert(billingVerifyCcRequest4.equals(billingVerifyCcRequest3));
        System.assert(billingVerifyCcRequest3.equals(billingVerifyCcRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest3 = new IntServerBillingVerifyCcRequest();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest4 = new IntServerBillingVerifyCcRequest();

        System.assert(billingVerifyCcRequest1.equals(billingVerifyCcRequest2));
        System.assert(billingVerifyCcRequest2.equals(billingVerifyCcRequest1));
        System.assert(billingVerifyCcRequest3.equals(billingVerifyCcRequest4));
        System.assert(billingVerifyCcRequest4.equals(billingVerifyCcRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = new IntServerBillingVerifyCcRequest();

        System.assertEquals(false, billingVerifyCcRequest1.equals('foo'));
        System.assertEquals(false, billingVerifyCcRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = new IntServerBillingVerifyCcRequest();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest3;

        System.assertEquals(false, billingVerifyCcRequest1.equals(billingVerifyCcRequest3));
        System.assertEquals(false, billingVerifyCcRequest2.equals(billingVerifyCcRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = new IntServerBillingVerifyCcRequest();

        System.assertEquals(billingVerifyCcRequest1.hashCode(), billingVerifyCcRequest1.hashCode());
        System.assertEquals(billingVerifyCcRequest2.hashCode(), billingVerifyCcRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest1 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest2 = IntServerBillingVerifyCcRequest.getExample();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest3 = new IntServerBillingVerifyCcRequest();
        IntServerBillingVerifyCcRequest billingVerifyCcRequest4 = new IntServerBillingVerifyCcRequest();

        System.assert(billingVerifyCcRequest1.equals(billingVerifyCcRequest2));
        System.assert(billingVerifyCcRequest3.equals(billingVerifyCcRequest4));
        System.assertEquals(billingVerifyCcRequest1.hashCode(), billingVerifyCcRequest2.hashCode());
        System.assertEquals(billingVerifyCcRequest3.hashCode(), billingVerifyCcRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBillingVerifyCcRequest billingVerifyCcRequest = new IntServerBillingVerifyCcRequest();
        Map<String, String> x-property-mappings = billingVerifyCcRequest.getx-property-mappings();
        System.assertEquals('ccCcv2', x-property-mappings.get('cc_ccv2'));
        System.assertEquals('ccAmount1', x-property-mappings.get('cc_amount1'));
        System.assertEquals('ccAmount2', x-property-mappings.get('cc_amount2'));
    }
}
