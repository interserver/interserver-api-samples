@isTest
private class IntServerServerOrderCpLiTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = serverOrderCpLi1;
        IntServerServerOrderCpLi serverOrderCpLi3 = new IntServerServerOrderCpLi();
        IntServerServerOrderCpLi serverOrderCpLi4 = serverOrderCpLi3;

        System.assert(serverOrderCpLi1.equals(serverOrderCpLi2));
        System.assert(serverOrderCpLi2.equals(serverOrderCpLi1));
        System.assert(serverOrderCpLi1.equals(serverOrderCpLi1));
        System.assert(serverOrderCpLi3.equals(serverOrderCpLi4));
        System.assert(serverOrderCpLi4.equals(serverOrderCpLi3));
        System.assert(serverOrderCpLi3.equals(serverOrderCpLi3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi3 = new IntServerServerOrderCpLi();
        IntServerServerOrderCpLi serverOrderCpLi4 = new IntServerServerOrderCpLi();

        System.assert(serverOrderCpLi1.equals(serverOrderCpLi2));
        System.assert(serverOrderCpLi2.equals(serverOrderCpLi1));
        System.assert(serverOrderCpLi3.equals(serverOrderCpLi4));
        System.assert(serverOrderCpLi4.equals(serverOrderCpLi3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = new IntServerServerOrderCpLi();

        System.assertEquals(false, serverOrderCpLi1.equals('foo'));
        System.assertEquals(false, serverOrderCpLi2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = new IntServerServerOrderCpLi();
        IntServerServerOrderCpLi serverOrderCpLi3;

        System.assertEquals(false, serverOrderCpLi1.equals(serverOrderCpLi3));
        System.assertEquals(false, serverOrderCpLi2.equals(serverOrderCpLi3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = new IntServerServerOrderCpLi();

        System.assertEquals(serverOrderCpLi1.hashCode(), serverOrderCpLi1.hashCode());
        System.assertEquals(serverOrderCpLi2.hashCode(), serverOrderCpLi2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderCpLi serverOrderCpLi1 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi2 = IntServerServerOrderCpLi.getExample();
        IntServerServerOrderCpLi serverOrderCpLi3 = new IntServerServerOrderCpLi();
        IntServerServerOrderCpLi serverOrderCpLi4 = new IntServerServerOrderCpLi();

        System.assert(serverOrderCpLi1.equals(serverOrderCpLi2));
        System.assert(serverOrderCpLi3.equals(serverOrderCpLi4));
        System.assertEquals(serverOrderCpLi1.hashCode(), serverOrderCpLi2.hashCode());
        System.assertEquals(serverOrderCpLi3.hashCode(), serverOrderCpLi4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderCpLi serverOrderCpLi = new IntServerServerOrderCpLi();
        Map<String, String> x-property-mappings = serverOrderCpLi.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('9'));
    }
}
