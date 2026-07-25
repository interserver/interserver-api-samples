@isTest
private class IntServerFloatingIpOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = floatingIpOrderRequest1;
        IntServerFloatingIpOrderRequest floatingIpOrderRequest3 = new IntServerFloatingIpOrderRequest();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest4 = floatingIpOrderRequest3;

        System.assert(floatingIpOrderRequest1.equals(floatingIpOrderRequest2));
        System.assert(floatingIpOrderRequest2.equals(floatingIpOrderRequest1));
        System.assert(floatingIpOrderRequest1.equals(floatingIpOrderRequest1));
        System.assert(floatingIpOrderRequest3.equals(floatingIpOrderRequest4));
        System.assert(floatingIpOrderRequest4.equals(floatingIpOrderRequest3));
        System.assert(floatingIpOrderRequest3.equals(floatingIpOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest3 = new IntServerFloatingIpOrderRequest();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest4 = new IntServerFloatingIpOrderRequest();

        System.assert(floatingIpOrderRequest1.equals(floatingIpOrderRequest2));
        System.assert(floatingIpOrderRequest2.equals(floatingIpOrderRequest1));
        System.assert(floatingIpOrderRequest3.equals(floatingIpOrderRequest4));
        System.assert(floatingIpOrderRequest4.equals(floatingIpOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = new IntServerFloatingIpOrderRequest();

        System.assertEquals(false, floatingIpOrderRequest1.equals('foo'));
        System.assertEquals(false, floatingIpOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = new IntServerFloatingIpOrderRequest();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest3;

        System.assertEquals(false, floatingIpOrderRequest1.equals(floatingIpOrderRequest3));
        System.assertEquals(false, floatingIpOrderRequest2.equals(floatingIpOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = new IntServerFloatingIpOrderRequest();

        System.assertEquals(floatingIpOrderRequest1.hashCode(), floatingIpOrderRequest1.hashCode());
        System.assertEquals(floatingIpOrderRequest2.hashCode(), floatingIpOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest1 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest2 = IntServerFloatingIpOrderRequest.getExample();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest3 = new IntServerFloatingIpOrderRequest();
        IntServerFloatingIpOrderRequest floatingIpOrderRequest4 = new IntServerFloatingIpOrderRequest();

        System.assert(floatingIpOrderRequest1.equals(floatingIpOrderRequest2));
        System.assert(floatingIpOrderRequest3.equals(floatingIpOrderRequest4));
        System.assertEquals(floatingIpOrderRequest1.hashCode(), floatingIpOrderRequest2.hashCode());
        System.assertEquals(floatingIpOrderRequest3.hashCode(), floatingIpOrderRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerFloatingIpOrderRequest floatingIpOrderRequest = new IntServerFloatingIpOrderRequest();
        System.assertEquals('', floatingIpOrderRequest.coupon);
        System.assertEquals('', floatingIpOrderRequest.comment);
        System.assertEquals(null, floatingIpOrderRequest.serviceType);
    }
}
