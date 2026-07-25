@isTest
private class IntServerGetOrderDetail200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = getOrderDetail200Response1;
        IntServerGetOrderDetail200Response getOrderDetail200Response3 = new IntServerGetOrderDetail200Response();
        IntServerGetOrderDetail200Response getOrderDetail200Response4 = getOrderDetail200Response3;

        System.assert(getOrderDetail200Response1.equals(getOrderDetail200Response2));
        System.assert(getOrderDetail200Response2.equals(getOrderDetail200Response1));
        System.assert(getOrderDetail200Response1.equals(getOrderDetail200Response1));
        System.assert(getOrderDetail200Response3.equals(getOrderDetail200Response4));
        System.assert(getOrderDetail200Response4.equals(getOrderDetail200Response3));
        System.assert(getOrderDetail200Response3.equals(getOrderDetail200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response3 = new IntServerGetOrderDetail200Response();
        IntServerGetOrderDetail200Response getOrderDetail200Response4 = new IntServerGetOrderDetail200Response();

        System.assert(getOrderDetail200Response1.equals(getOrderDetail200Response2));
        System.assert(getOrderDetail200Response2.equals(getOrderDetail200Response1));
        System.assert(getOrderDetail200Response3.equals(getOrderDetail200Response4));
        System.assert(getOrderDetail200Response4.equals(getOrderDetail200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = new IntServerGetOrderDetail200Response();

        System.assertEquals(false, getOrderDetail200Response1.equals('foo'));
        System.assertEquals(false, getOrderDetail200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = new IntServerGetOrderDetail200Response();
        IntServerGetOrderDetail200Response getOrderDetail200Response3;

        System.assertEquals(false, getOrderDetail200Response1.equals(getOrderDetail200Response3));
        System.assertEquals(false, getOrderDetail200Response2.equals(getOrderDetail200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = new IntServerGetOrderDetail200Response();

        System.assertEquals(getOrderDetail200Response1.hashCode(), getOrderDetail200Response1.hashCode());
        System.assertEquals(getOrderDetail200Response2.hashCode(), getOrderDetail200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetOrderDetail200Response getOrderDetail200Response1 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response2 = IntServerGetOrderDetail200Response.getExample();
        IntServerGetOrderDetail200Response getOrderDetail200Response3 = new IntServerGetOrderDetail200Response();
        IntServerGetOrderDetail200Response getOrderDetail200Response4 = new IntServerGetOrderDetail200Response();

        System.assert(getOrderDetail200Response1.equals(getOrderDetail200Response2));
        System.assert(getOrderDetail200Response3.equals(getOrderDetail200Response4));
        System.assertEquals(getOrderDetail200Response1.hashCode(), getOrderDetail200Response2.hashCode());
        System.assertEquals(getOrderDetail200Response3.hashCode(), getOrderDetail200Response4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerGetOrderDetail200Response getOrderDetail200Response = new IntServerGetOrderDetail200Response();
        System.assertEquals(new List<IntServerGetOrderDetail200ResponseSe>(), getOrderDetail200Response.serviceTypes);
        System.assertEquals(new List<IntServerGetOrderDetail200ResponseIp>(), getOrderDetail200Response.ips);
        System.assertEquals(null, getOrderDetail200Response.packageCosts);
    }
}
