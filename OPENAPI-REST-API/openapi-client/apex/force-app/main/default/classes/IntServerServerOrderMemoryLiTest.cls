@isTest
private class IntServerServerOrderMemoryLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = serverOrderMemoryLi1;
        IntServerServerOrderMemoryLi serverOrderMemoryLi3 = new IntServerServerOrderMemoryLi();
        IntServerServerOrderMemoryLi serverOrderMemoryLi4 = serverOrderMemoryLi3;

        System.assert(serverOrderMemoryLi1.equals(serverOrderMemoryLi2));
        System.assert(serverOrderMemoryLi2.equals(serverOrderMemoryLi1));
        System.assert(serverOrderMemoryLi1.equals(serverOrderMemoryLi1));
        System.assert(serverOrderMemoryLi3.equals(serverOrderMemoryLi4));
        System.assert(serverOrderMemoryLi4.equals(serverOrderMemoryLi3));
        System.assert(serverOrderMemoryLi3.equals(serverOrderMemoryLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi3 = new IntServerServerOrderMemoryLi();
        IntServerServerOrderMemoryLi serverOrderMemoryLi4 = new IntServerServerOrderMemoryLi();

        System.assert(serverOrderMemoryLi1.equals(serverOrderMemoryLi2));
        System.assert(serverOrderMemoryLi2.equals(serverOrderMemoryLi1));
        System.assert(serverOrderMemoryLi3.equals(serverOrderMemoryLi4));
        System.assert(serverOrderMemoryLi4.equals(serverOrderMemoryLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = new IntServerServerOrderMemoryLi();

        System.assertEquals(false, serverOrderMemoryLi1.equals('foo'));
        System.assertEquals(false, serverOrderMemoryLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = new IntServerServerOrderMemoryLi();
        IntServerServerOrderMemoryLi serverOrderMemoryLi3;

        System.assertEquals(false, serverOrderMemoryLi1.equals(serverOrderMemoryLi3));
        System.assertEquals(false, serverOrderMemoryLi2.equals(serverOrderMemoryLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = new IntServerServerOrderMemoryLi();

        System.assertEquals(serverOrderMemoryLi1.hashCode(), serverOrderMemoryLi1.hashCode());
        System.assertEquals(serverOrderMemoryLi2.hashCode(), serverOrderMemoryLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi1 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi2 = IntServerServerOrderMemoryLi.getExample();
        IntServerServerOrderMemoryLi serverOrderMemoryLi3 = new IntServerServerOrderMemoryLi();
        IntServerServerOrderMemoryLi serverOrderMemoryLi4 = new IntServerServerOrderMemoryLi();

        System.assert(serverOrderMemoryLi1.equals(serverOrderMemoryLi2));
        System.assert(serverOrderMemoryLi3.equals(serverOrderMemoryLi4));
        System.assertEquals(serverOrderMemoryLi1.hashCode(), serverOrderMemoryLi2.hashCode());
        System.assertEquals(serverOrderMemoryLi3.hashCode(), serverOrderMemoryLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderMemoryLi serverOrderMemoryLi = new IntServerServerOrderMemoryLi();
        Map<String, String> x-property-mappings = serverOrderMemoryLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('254'));
    }
}
