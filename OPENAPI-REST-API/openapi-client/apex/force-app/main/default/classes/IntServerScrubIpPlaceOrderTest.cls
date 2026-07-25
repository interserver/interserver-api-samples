@isTest
private class IntServerScrubIpPlaceOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = scrubIpPlaceOrder1;
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder3 = new IntServerScrubIpPlaceOrder();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder4 = scrubIpPlaceOrder3;

        System.assert(scrubIpPlaceOrder1.equals(scrubIpPlaceOrder2));
        System.assert(scrubIpPlaceOrder2.equals(scrubIpPlaceOrder1));
        System.assert(scrubIpPlaceOrder1.equals(scrubIpPlaceOrder1));
        System.assert(scrubIpPlaceOrder3.equals(scrubIpPlaceOrder4));
        System.assert(scrubIpPlaceOrder4.equals(scrubIpPlaceOrder3));
        System.assert(scrubIpPlaceOrder3.equals(scrubIpPlaceOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder3 = new IntServerScrubIpPlaceOrder();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder4 = new IntServerScrubIpPlaceOrder();

        System.assert(scrubIpPlaceOrder1.equals(scrubIpPlaceOrder2));
        System.assert(scrubIpPlaceOrder2.equals(scrubIpPlaceOrder1));
        System.assert(scrubIpPlaceOrder3.equals(scrubIpPlaceOrder4));
        System.assert(scrubIpPlaceOrder4.equals(scrubIpPlaceOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = new IntServerScrubIpPlaceOrder();

        System.assertEquals(false, scrubIpPlaceOrder1.equals('foo'));
        System.assertEquals(false, scrubIpPlaceOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = new IntServerScrubIpPlaceOrder();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder3;

        System.assertEquals(false, scrubIpPlaceOrder1.equals(scrubIpPlaceOrder3));
        System.assertEquals(false, scrubIpPlaceOrder2.equals(scrubIpPlaceOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = new IntServerScrubIpPlaceOrder();

        System.assertEquals(scrubIpPlaceOrder1.hashCode(), scrubIpPlaceOrder1.hashCode());
        System.assertEquals(scrubIpPlaceOrder2.hashCode(), scrubIpPlaceOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder1 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder2 = IntServerScrubIpPlaceOrder.getExample();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder3 = new IntServerScrubIpPlaceOrder();
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder4 = new IntServerScrubIpPlaceOrder();

        System.assert(scrubIpPlaceOrder1.equals(scrubIpPlaceOrder2));
        System.assert(scrubIpPlaceOrder3.equals(scrubIpPlaceOrder4));
        System.assertEquals(scrubIpPlaceOrder1.hashCode(), scrubIpPlaceOrder2.hashCode());
        System.assertEquals(scrubIpPlaceOrder3.hashCode(), scrubIpPlaceOrder4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerScrubIpPlaceOrder scrubIpPlaceOrder = new IntServerScrubIpPlaceOrder();
        Map<String, String> x-property-mappings = scrubIpPlaceOrder.getx-property-mappings();
        System.assertEquals('serviceType', x-property-mappings.get('service_type'));
    }
}
