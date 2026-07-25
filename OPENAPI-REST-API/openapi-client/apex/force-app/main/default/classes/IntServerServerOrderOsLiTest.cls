@isTest
private class IntServerServerOrderOsLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = serverOrderOsLi1;
        IntServerServerOrderOsLi serverOrderOsLi3 = new IntServerServerOrderOsLi();
        IntServerServerOrderOsLi serverOrderOsLi4 = serverOrderOsLi3;

        System.assert(serverOrderOsLi1.equals(serverOrderOsLi2));
        System.assert(serverOrderOsLi2.equals(serverOrderOsLi1));
        System.assert(serverOrderOsLi1.equals(serverOrderOsLi1));
        System.assert(serverOrderOsLi3.equals(serverOrderOsLi4));
        System.assert(serverOrderOsLi4.equals(serverOrderOsLi3));
        System.assert(serverOrderOsLi3.equals(serverOrderOsLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi3 = new IntServerServerOrderOsLi();
        IntServerServerOrderOsLi serverOrderOsLi4 = new IntServerServerOrderOsLi();

        System.assert(serverOrderOsLi1.equals(serverOrderOsLi2));
        System.assert(serverOrderOsLi2.equals(serverOrderOsLi1));
        System.assert(serverOrderOsLi3.equals(serverOrderOsLi4));
        System.assert(serverOrderOsLi4.equals(serverOrderOsLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = new IntServerServerOrderOsLi();

        System.assertEquals(false, serverOrderOsLi1.equals('foo'));
        System.assertEquals(false, serverOrderOsLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = new IntServerServerOrderOsLi();
        IntServerServerOrderOsLi serverOrderOsLi3;

        System.assertEquals(false, serverOrderOsLi1.equals(serverOrderOsLi3));
        System.assertEquals(false, serverOrderOsLi2.equals(serverOrderOsLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = new IntServerServerOrderOsLi();

        System.assertEquals(serverOrderOsLi1.hashCode(), serverOrderOsLi1.hashCode());
        System.assertEquals(serverOrderOsLi2.hashCode(), serverOrderOsLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderOsLi serverOrderOsLi1 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi2 = IntServerServerOrderOsLi.getExample();
        IntServerServerOrderOsLi serverOrderOsLi3 = new IntServerServerOrderOsLi();
        IntServerServerOrderOsLi serverOrderOsLi4 = new IntServerServerOrderOsLi();

        System.assert(serverOrderOsLi1.equals(serverOrderOsLi2));
        System.assert(serverOrderOsLi3.equals(serverOrderOsLi4));
        System.assertEquals(serverOrderOsLi1.hashCode(), serverOrderOsLi2.hashCode());
        System.assertEquals(serverOrderOsLi3.hashCode(), serverOrderOsLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderOsLi serverOrderOsLi = new IntServerServerOrderOsLi();
        Map<String, String> x-property-mappings = serverOrderOsLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('51'));
    }
}
