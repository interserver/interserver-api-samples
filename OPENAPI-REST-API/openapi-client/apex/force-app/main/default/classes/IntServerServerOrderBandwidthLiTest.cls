@isTest
private class IntServerServerOrderBandwidthLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = serverOrderBandwidthLi1;
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi3 = new IntServerServerOrderBandwidthLi();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi4 = serverOrderBandwidthLi3;

        System.assert(serverOrderBandwidthLi1.equals(serverOrderBandwidthLi2));
        System.assert(serverOrderBandwidthLi2.equals(serverOrderBandwidthLi1));
        System.assert(serverOrderBandwidthLi1.equals(serverOrderBandwidthLi1));
        System.assert(serverOrderBandwidthLi3.equals(serverOrderBandwidthLi4));
        System.assert(serverOrderBandwidthLi4.equals(serverOrderBandwidthLi3));
        System.assert(serverOrderBandwidthLi3.equals(serverOrderBandwidthLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi3 = new IntServerServerOrderBandwidthLi();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi4 = new IntServerServerOrderBandwidthLi();

        System.assert(serverOrderBandwidthLi1.equals(serverOrderBandwidthLi2));
        System.assert(serverOrderBandwidthLi2.equals(serverOrderBandwidthLi1));
        System.assert(serverOrderBandwidthLi3.equals(serverOrderBandwidthLi4));
        System.assert(serverOrderBandwidthLi4.equals(serverOrderBandwidthLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = new IntServerServerOrderBandwidthLi();

        System.assertEquals(false, serverOrderBandwidthLi1.equals('foo'));
        System.assertEquals(false, serverOrderBandwidthLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = new IntServerServerOrderBandwidthLi();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi3;

        System.assertEquals(false, serverOrderBandwidthLi1.equals(serverOrderBandwidthLi3));
        System.assertEquals(false, serverOrderBandwidthLi2.equals(serverOrderBandwidthLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = new IntServerServerOrderBandwidthLi();

        System.assertEquals(serverOrderBandwidthLi1.hashCode(), serverOrderBandwidthLi1.hashCode());
        System.assertEquals(serverOrderBandwidthLi2.hashCode(), serverOrderBandwidthLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi1 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi2 = IntServerServerOrderBandwidthLi.getExample();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi3 = new IntServerServerOrderBandwidthLi();
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi4 = new IntServerServerOrderBandwidthLi();

        System.assert(serverOrderBandwidthLi1.equals(serverOrderBandwidthLi2));
        System.assert(serverOrderBandwidthLi3.equals(serverOrderBandwidthLi4));
        System.assertEquals(serverOrderBandwidthLi1.hashCode(), serverOrderBandwidthLi2.hashCode());
        System.assertEquals(serverOrderBandwidthLi3.hashCode(), serverOrderBandwidthLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderBandwidthLi serverOrderBandwidthLi = new IntServerServerOrderBandwidthLi();
        Map<String, String> x-property-mappings = serverOrderBandwidthLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('15'));
    }
}
