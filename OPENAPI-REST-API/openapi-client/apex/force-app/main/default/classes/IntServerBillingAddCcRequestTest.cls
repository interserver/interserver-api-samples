@isTest
private class IntServerBillingAddCcRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = billingAddCcRequest1;
        IntServerBillingAddCcRequest billingAddCcRequest3 = new IntServerBillingAddCcRequest();
        IntServerBillingAddCcRequest billingAddCcRequest4 = billingAddCcRequest3;

        System.assert(billingAddCcRequest1.equals(billingAddCcRequest2));
        System.assert(billingAddCcRequest2.equals(billingAddCcRequest1));
        System.assert(billingAddCcRequest1.equals(billingAddCcRequest1));
        System.assert(billingAddCcRequest3.equals(billingAddCcRequest4));
        System.assert(billingAddCcRequest4.equals(billingAddCcRequest3));
        System.assert(billingAddCcRequest3.equals(billingAddCcRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest3 = new IntServerBillingAddCcRequest();
        IntServerBillingAddCcRequest billingAddCcRequest4 = new IntServerBillingAddCcRequest();

        System.assert(billingAddCcRequest1.equals(billingAddCcRequest2));
        System.assert(billingAddCcRequest2.equals(billingAddCcRequest1));
        System.assert(billingAddCcRequest3.equals(billingAddCcRequest4));
        System.assert(billingAddCcRequest4.equals(billingAddCcRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = new IntServerBillingAddCcRequest();

        System.assertEquals(false, billingAddCcRequest1.equals('foo'));
        System.assertEquals(false, billingAddCcRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = new IntServerBillingAddCcRequest();
        IntServerBillingAddCcRequest billingAddCcRequest3;

        System.assertEquals(false, billingAddCcRequest1.equals(billingAddCcRequest3));
        System.assertEquals(false, billingAddCcRequest2.equals(billingAddCcRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = new IntServerBillingAddCcRequest();

        System.assertEquals(billingAddCcRequest1.hashCode(), billingAddCcRequest1.hashCode());
        System.assertEquals(billingAddCcRequest2.hashCode(), billingAddCcRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerBillingAddCcRequest billingAddCcRequest1 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest2 = IntServerBillingAddCcRequest.getExample();
        IntServerBillingAddCcRequest billingAddCcRequest3 = new IntServerBillingAddCcRequest();
        IntServerBillingAddCcRequest billingAddCcRequest4 = new IntServerBillingAddCcRequest();

        System.assert(billingAddCcRequest1.equals(billingAddCcRequest2));
        System.assert(billingAddCcRequest3.equals(billingAddCcRequest4));
        System.assertEquals(billingAddCcRequest1.hashCode(), billingAddCcRequest2.hashCode());
        System.assertEquals(billingAddCcRequest3.hashCode(), billingAddCcRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerBillingAddCcRequest billingAddCcRequest = new IntServerBillingAddCcRequest();
        Map<String, String> x-property-mappings = billingAddCcRequest.getx-property-mappings();
        System.assertEquals('ccExp', x-property-mappings.get('cc_exp'));
        System.assertEquals('ccCcv2', x-property-mappings.get('cc_ccv2'));
    }
}
