@isTest
private class IntServerGetOrderDetail200ResponsePaTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = getOrderDetail200ResponsePackageCosts1;
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts3 = new IntServerGetOrderDetail200ResponsePa();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts4 = getOrderDetail200ResponsePackageCosts3;

        System.assert(getOrderDetail200ResponsePackageCosts1.equals(getOrderDetail200ResponsePackageCosts2));
        System.assert(getOrderDetail200ResponsePackageCosts2.equals(getOrderDetail200ResponsePackageCosts1));
        System.assert(getOrderDetail200ResponsePackageCosts1.equals(getOrderDetail200ResponsePackageCosts1));
        System.assert(getOrderDetail200ResponsePackageCosts3.equals(getOrderDetail200ResponsePackageCosts4));
        System.assert(getOrderDetail200ResponsePackageCosts4.equals(getOrderDetail200ResponsePackageCosts3));
        System.assert(getOrderDetail200ResponsePackageCosts3.equals(getOrderDetail200ResponsePackageCosts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts3 = new IntServerGetOrderDetail200ResponsePa();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts4 = new IntServerGetOrderDetail200ResponsePa();

        System.assert(getOrderDetail200ResponsePackageCosts1.equals(getOrderDetail200ResponsePackageCosts2));
        System.assert(getOrderDetail200ResponsePackageCosts2.equals(getOrderDetail200ResponsePackageCosts1));
        System.assert(getOrderDetail200ResponsePackageCosts3.equals(getOrderDetail200ResponsePackageCosts4));
        System.assert(getOrderDetail200ResponsePackageCosts4.equals(getOrderDetail200ResponsePackageCosts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = new IntServerGetOrderDetail200ResponsePa();

        System.assertEquals(false, getOrderDetail200ResponsePackageCosts1.equals('foo'));
        System.assertEquals(false, getOrderDetail200ResponsePackageCosts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = new IntServerGetOrderDetail200ResponsePa();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts3;

        System.assertEquals(false, getOrderDetail200ResponsePackageCosts1.equals(getOrderDetail200ResponsePackageCosts3));
        System.assertEquals(false, getOrderDetail200ResponsePackageCosts2.equals(getOrderDetail200ResponsePackageCosts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = new IntServerGetOrderDetail200ResponsePa();

        System.assertEquals(getOrderDetail200ResponsePackageCosts1.hashCode(), getOrderDetail200ResponsePackageCosts1.hashCode());
        System.assertEquals(getOrderDetail200ResponsePackageCosts2.hashCode(), getOrderDetail200ResponsePackageCosts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts1 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts2 = IntServerGetOrderDetail200ResponsePa.getExample();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts3 = new IntServerGetOrderDetail200ResponsePa();
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts4 = new IntServerGetOrderDetail200ResponsePa();

        System.assert(getOrderDetail200ResponsePackageCosts1.equals(getOrderDetail200ResponsePackageCosts2));
        System.assert(getOrderDetail200ResponsePackageCosts3.equals(getOrderDetail200ResponsePackageCosts4));
        System.assertEquals(getOrderDetail200ResponsePackageCosts1.hashCode(), getOrderDetail200ResponsePackageCosts2.hashCode());
        System.assertEquals(getOrderDetail200ResponsePackageCosts3.hashCode(), getOrderDetail200ResponsePackageCosts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetOrderDetail200ResponsePa getOrderDetail200ResponsePackageCosts = new IntServerGetOrderDetail200ResponsePa();
        Map<String, String> x-property-mappings = getOrderDetail200ResponsePackageCosts.getx-property-mappings();
        System.assertEquals('packageId', x-property-mappings.get('package_id'));
        System.assertEquals('packageCost', x-property-mappings.get('package_cost'));
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
