@isTest
private class IntServerBillingPrepayRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = billingPrepayRequest1;
        IntServerBillingPrepayRequest billingPrepayRequest3 = new IntServerBillingPrepayRequest();
        IntServerBillingPrepayRequest billingPrepayRequest4 = billingPrepayRequest3;

        System.assert(billingPrepayRequest1.equals(billingPrepayRequest2));
        System.assert(billingPrepayRequest2.equals(billingPrepayRequest1));
        System.assert(billingPrepayRequest1.equals(billingPrepayRequest1));
        System.assert(billingPrepayRequest3.equals(billingPrepayRequest4));
        System.assert(billingPrepayRequest4.equals(billingPrepayRequest3));
        System.assert(billingPrepayRequest3.equals(billingPrepayRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest3 = new IntServerBillingPrepayRequest();
        IntServerBillingPrepayRequest billingPrepayRequest4 = new IntServerBillingPrepayRequest();

        System.assert(billingPrepayRequest1.equals(billingPrepayRequest2));
        System.assert(billingPrepayRequest2.equals(billingPrepayRequest1));
        System.assert(billingPrepayRequest3.equals(billingPrepayRequest4));
        System.assert(billingPrepayRequest4.equals(billingPrepayRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = new IntServerBillingPrepayRequest();

        System.assertEquals(false, billingPrepayRequest1.equals('foo'));
        System.assertEquals(false, billingPrepayRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = new IntServerBillingPrepayRequest();
        IntServerBillingPrepayRequest billingPrepayRequest3;

        System.assertEquals(false, billingPrepayRequest1.equals(billingPrepayRequest3));
        System.assertEquals(false, billingPrepayRequest2.equals(billingPrepayRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = new IntServerBillingPrepayRequest();

        System.assertEquals(billingPrepayRequest1.hashCode(), billingPrepayRequest1.hashCode());
        System.assertEquals(billingPrepayRequest2.hashCode(), billingPrepayRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingPrepayRequest billingPrepayRequest1 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest2 = IntServerBillingPrepayRequest.getExample();
        IntServerBillingPrepayRequest billingPrepayRequest3 = new IntServerBillingPrepayRequest();
        IntServerBillingPrepayRequest billingPrepayRequest4 = new IntServerBillingPrepayRequest();

        System.assert(billingPrepayRequest1.equals(billingPrepayRequest2));
        System.assert(billingPrepayRequest3.equals(billingPrepayRequest4));
        System.assertEquals(billingPrepayRequest1.hashCode(), billingPrepayRequest2.hashCode());
        System.assertEquals(billingPrepayRequest3.hashCode(), billingPrepayRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBillingPrepayRequest billingPrepayRequest = new IntServerBillingPrepayRequest();
        Map<String, String> x-property-mappings = billingPrepayRequest.getx-property-mappings();
        System.assertEquals('automaticUse', x-property-mappings.get('automatic_use'));
    }
}
