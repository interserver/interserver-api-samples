@isTest
private class IntServerServerOrderBandwidthTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = serverOrderBandwidth1;
        IntServerServerOrderBandwidth serverOrderBandwidth3 = new IntServerServerOrderBandwidth();
        IntServerServerOrderBandwidth serverOrderBandwidth4 = serverOrderBandwidth3;

        System.assert(serverOrderBandwidth1.equals(serverOrderBandwidth2));
        System.assert(serverOrderBandwidth2.equals(serverOrderBandwidth1));
        System.assert(serverOrderBandwidth1.equals(serverOrderBandwidth1));
        System.assert(serverOrderBandwidth3.equals(serverOrderBandwidth4));
        System.assert(serverOrderBandwidth4.equals(serverOrderBandwidth3));
        System.assert(serverOrderBandwidth3.equals(serverOrderBandwidth3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth3 = new IntServerServerOrderBandwidth();
        IntServerServerOrderBandwidth serverOrderBandwidth4 = new IntServerServerOrderBandwidth();

        System.assert(serverOrderBandwidth1.equals(serverOrderBandwidth2));
        System.assert(serverOrderBandwidth2.equals(serverOrderBandwidth1));
        System.assert(serverOrderBandwidth3.equals(serverOrderBandwidth4));
        System.assert(serverOrderBandwidth4.equals(serverOrderBandwidth3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = new IntServerServerOrderBandwidth();

        System.assertEquals(false, serverOrderBandwidth1.equals('foo'));
        System.assertEquals(false, serverOrderBandwidth2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = new IntServerServerOrderBandwidth();
        IntServerServerOrderBandwidth serverOrderBandwidth3;

        System.assertEquals(false, serverOrderBandwidth1.equals(serverOrderBandwidth3));
        System.assertEquals(false, serverOrderBandwidth2.equals(serverOrderBandwidth3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = new IntServerServerOrderBandwidth();

        System.assertEquals(serverOrderBandwidth1.hashCode(), serverOrderBandwidth1.hashCode());
        System.assertEquals(serverOrderBandwidth2.hashCode(), serverOrderBandwidth2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderBandwidth serverOrderBandwidth1 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth2 = IntServerServerOrderBandwidth.getExample();
        IntServerServerOrderBandwidth serverOrderBandwidth3 = new IntServerServerOrderBandwidth();
        IntServerServerOrderBandwidth serverOrderBandwidth4 = new IntServerServerOrderBandwidth();

        System.assert(serverOrderBandwidth1.equals(serverOrderBandwidth2));
        System.assert(serverOrderBandwidth3.equals(serverOrderBandwidth4));
        System.assertEquals(serverOrderBandwidth1.hashCode(), serverOrderBandwidth2.hashCode());
        System.assertEquals(serverOrderBandwidth3.hashCode(), serverOrderBandwidth4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderBandwidth serverOrderBandwidth = new IntServerServerOrderBandwidth();
        Map<String, String> x-property-mappings = serverOrderBandwidth.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
