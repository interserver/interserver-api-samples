@isTest
private class IntServerGetOrderDetail200ResponseIpTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = getOrderDetail200ResponseIpsInner1;
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner3 = new IntServerGetOrderDetail200ResponseIp();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner4 = getOrderDetail200ResponseIpsInner3;

        System.assert(getOrderDetail200ResponseIpsInner1.equals(getOrderDetail200ResponseIpsInner2));
        System.assert(getOrderDetail200ResponseIpsInner2.equals(getOrderDetail200ResponseIpsInner1));
        System.assert(getOrderDetail200ResponseIpsInner1.equals(getOrderDetail200ResponseIpsInner1));
        System.assert(getOrderDetail200ResponseIpsInner3.equals(getOrderDetail200ResponseIpsInner4));
        System.assert(getOrderDetail200ResponseIpsInner4.equals(getOrderDetail200ResponseIpsInner3));
        System.assert(getOrderDetail200ResponseIpsInner3.equals(getOrderDetail200ResponseIpsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner3 = new IntServerGetOrderDetail200ResponseIp();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner4 = new IntServerGetOrderDetail200ResponseIp();

        System.assert(getOrderDetail200ResponseIpsInner1.equals(getOrderDetail200ResponseIpsInner2));
        System.assert(getOrderDetail200ResponseIpsInner2.equals(getOrderDetail200ResponseIpsInner1));
        System.assert(getOrderDetail200ResponseIpsInner3.equals(getOrderDetail200ResponseIpsInner4));
        System.assert(getOrderDetail200ResponseIpsInner4.equals(getOrderDetail200ResponseIpsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = new IntServerGetOrderDetail200ResponseIp();

        System.assertEquals(false, getOrderDetail200ResponseIpsInner1.equals('foo'));
        System.assertEquals(false, getOrderDetail200ResponseIpsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = new IntServerGetOrderDetail200ResponseIp();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner3;

        System.assertEquals(false, getOrderDetail200ResponseIpsInner1.equals(getOrderDetail200ResponseIpsInner3));
        System.assertEquals(false, getOrderDetail200ResponseIpsInner2.equals(getOrderDetail200ResponseIpsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = new IntServerGetOrderDetail200ResponseIp();

        System.assertEquals(getOrderDetail200ResponseIpsInner1.hashCode(), getOrderDetail200ResponseIpsInner1.hashCode());
        System.assertEquals(getOrderDetail200ResponseIpsInner2.hashCode(), getOrderDetail200ResponseIpsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner1 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner2 = IntServerGetOrderDetail200ResponseIp.getExample();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner3 = new IntServerGetOrderDetail200ResponseIp();
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner4 = new IntServerGetOrderDetail200ResponseIp();

        System.assert(getOrderDetail200ResponseIpsInner1.equals(getOrderDetail200ResponseIpsInner2));
        System.assert(getOrderDetail200ResponseIpsInner3.equals(getOrderDetail200ResponseIpsInner4));
        System.assertEquals(getOrderDetail200ResponseIpsInner1.hashCode(), getOrderDetail200ResponseIpsInner2.hashCode());
        System.assertEquals(getOrderDetail200ResponseIpsInner3.hashCode(), getOrderDetail200ResponseIpsInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetOrderDetail200ResponseIp getOrderDetail200ResponseIpsInner = new IntServerGetOrderDetail200ResponseIp();
        Map<String, String> x-property-mappings = getOrderDetail200ResponseIpsInner.getx-property-mappings();
        System.assertEquals('serviceId', x-property-mappings.get('service_id'));
        System.assertEquals('serviceModule', x-property-mappings.get('service_module'));
        System.assertEquals('serviceHostname', x-property-mappings.get('service_hostname'));
    }
}
