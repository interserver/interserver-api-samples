@isTest
private class IntServerServerOrderIpsLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = serverOrderIpsLi1;
        IntServerServerOrderIpsLi serverOrderIpsLi3 = new IntServerServerOrderIpsLi();
        IntServerServerOrderIpsLi serverOrderIpsLi4 = serverOrderIpsLi3;

        System.assert(serverOrderIpsLi1.equals(serverOrderIpsLi2));
        System.assert(serverOrderIpsLi2.equals(serverOrderIpsLi1));
        System.assert(serverOrderIpsLi1.equals(serverOrderIpsLi1));
        System.assert(serverOrderIpsLi3.equals(serverOrderIpsLi4));
        System.assert(serverOrderIpsLi4.equals(serverOrderIpsLi3));
        System.assert(serverOrderIpsLi3.equals(serverOrderIpsLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi3 = new IntServerServerOrderIpsLi();
        IntServerServerOrderIpsLi serverOrderIpsLi4 = new IntServerServerOrderIpsLi();

        System.assert(serverOrderIpsLi1.equals(serverOrderIpsLi2));
        System.assert(serverOrderIpsLi2.equals(serverOrderIpsLi1));
        System.assert(serverOrderIpsLi3.equals(serverOrderIpsLi4));
        System.assert(serverOrderIpsLi4.equals(serverOrderIpsLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = new IntServerServerOrderIpsLi();

        System.assertEquals(false, serverOrderIpsLi1.equals('foo'));
        System.assertEquals(false, serverOrderIpsLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = new IntServerServerOrderIpsLi();
        IntServerServerOrderIpsLi serverOrderIpsLi3;

        System.assertEquals(false, serverOrderIpsLi1.equals(serverOrderIpsLi3));
        System.assertEquals(false, serverOrderIpsLi2.equals(serverOrderIpsLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = new IntServerServerOrderIpsLi();

        System.assertEquals(serverOrderIpsLi1.hashCode(), serverOrderIpsLi1.hashCode());
        System.assertEquals(serverOrderIpsLi2.hashCode(), serverOrderIpsLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderIpsLi serverOrderIpsLi1 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi2 = IntServerServerOrderIpsLi.getExample();
        IntServerServerOrderIpsLi serverOrderIpsLi3 = new IntServerServerOrderIpsLi();
        IntServerServerOrderIpsLi serverOrderIpsLi4 = new IntServerServerOrderIpsLi();

        System.assert(serverOrderIpsLi1.equals(serverOrderIpsLi2));
        System.assert(serverOrderIpsLi3.equals(serverOrderIpsLi4));
        System.assertEquals(serverOrderIpsLi1.hashCode(), serverOrderIpsLi2.hashCode());
        System.assertEquals(serverOrderIpsLi3.hashCode(), serverOrderIpsLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderIpsLi serverOrderIpsLi = new IntServerServerOrderIpsLi();
        Map<String, String> x-property-mappings = serverOrderIpsLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('9'));
    }
}
